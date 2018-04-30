#!/usr/bin/env python

#
# make_fl2k_file.py - generate a file of 8-bit samples for input to the
#  osmo-fl2k program for driving a Fresco Logic FL2000 chip to generate
#  all US allocated MW broadcasting channels announcing their frequency
#  in a synthesized voice.
#
#  requires that 'flite' speech synthesizer be installed,
#     and curently uses the cmu_us_ljm.flitevox voice which must be downloaded
#     and placed in the script directory
#

import numpy as np
from scipy import signal
import subprocess
import wave
import struct
import tempfile
import sys
from array import array
import argparse


def generate_voice_samples(frequencies):
    """ create wav files of synthesized speech frequency announcements """
    wav_files = {}
    for freq in frequencies:
        sys.stderr.write('generating voice for ' + str(freq) + ' kHz\r')

        # convert frequency to sequence of (phoentic) numerals
        s = str(freq)
        text = ''
        for n in s:
            if n == '9':
                text += "niner "
            else:
                text += n + " "
        text += "killahurtz"  # better pronounciation

        # temporary file for wav
        wav_file = tempfile.NamedTemporaryFile()
        wav_files[freq] = wav_file

        # call 'flite' to generate speech from text
        speech_pipe = subprocess.call(['flite',
                                       '-voice',  'file://cmu_us_ljm.flitevox',
                                       '"' + text + '"',
                                       wav_file.name])
        wav_file.seek(0)
    sys.stderr.write('voices generated                  \n')
    return wav_files


def sigma_delta_ddc(input, file, order):
    """ sigma-delta digital-to-digital converter """
    sys.stderr.write('DDC')
    if order == 0:
        sys.stderr.write('...')
        z = array('b', (np.floor(input*127.)).astype(int).tolist())
        z.tofile(file)
    else:
        S = np.zeros(order)
        DDC = 0
        for i in range(0, len(R)):
            if not i % 100000:
                sys.stderr.write('\rDDC       %12d' % i)
            S[0] += input[i] - DDC/127.
            for j in range(1, order):
                S[j] += S[j-1] - DDC/127.
            DDC = max(-128, min(127, np.floor(S[-1]*127)))
            i8_r = struct.pack('b', DDC)
            file.write(i8_r)
    sys.stderr.write('DDC done                          \n')


def generate_voice_marker(outputfile, order, begin_freq, end_freq, freq_step,
                          amp_scale, f_carrier_sample, f_output_sample):
    f_speech = 16000.  # hard-coded inside speech synthesizer

    try:
        file = open(outputfile, 'w')
    except IOError:
        sys.stderr.write('Cannot open output file "%s"\n' % outputfile)
        sys.exit(1)

    frequencies = range(begin_freq, end_freq + freq_step/2, freq_step)
    wav_files = generate_voice_samples(frequencies)

    # open all wav files and find longest speech clip
    wavs = {}
    max_frames = 0
    for freq in frequencies:
        wavs[freq] = wave.open(wav_files[freq], 'r')
        nframes = wavs[freq].getnframes()
        if nframes > max_frames:
            max_frames = nframes

    # sample carriers directly
    carrier_samples = int(f_carrier_sample * max_frames/f_speech)
    R = np.zeros(int(carrier_samples), dtype=np.float64)
    t = np.linspace(0., carrier_samples-1, carrier_samples,
                    dtype=np.float64)/f_carrier_sample
    scale = amp_scale * 1./len(frequencies)
    for freq in frequencies:
        sys.stderr.write('modulating ' + str(freq) + ' kHz\r')

        # read wav file, convert to floating-point samples,
        #   and resample to the carrier sampling frequency
        n_frames = wavs[freq].getnframes()
        b = wavs[freq].readframes(n_frames)
        a = np.array(array('h', b), dtype=np.float64)/32768.
        a_s = signal.resample_poly(a, f_carrier_sample, f_speech)

        # zero-pad if necessary to match length of longest sample
        pad_len = carrier_samples - len(a_s)
        half_pad = pad_len / 2
        a_s = np.pad(a_s, (half_pad, pad_len-half_pad), 'constant')

        # AM modulate onto carrier and add to spectrum
        wc = 2. * np.pi * freq * 1.e3
        R += scale * (0.5 + 0.5 * a_s) * np.cos(wc * t)

    n_samples = int(f_output_sample * max_frames/f_speech)

    # resample to output rate (oversampling for SNR improvement)
    sys.stderr.write('\nresampling %d\n' % int(n_samples))
    R = signal.resample_poly(R, n_samples, carrier_samples)

    # clip samples to (-1, +1)
    max_amplitude = np.amax(R)
    R = np.maximum(-1., np.minimum(R, 1.))

    # use sigma-delta modulation for noise shaping for further SNR
    #   improvement
    sigma_delta_ddc(R, file, order)
    sys.stderr.write('max amplitude = ' + str(max_amplitude) + '\n')
    file.close()


def main():
    parser = argparse.ArgumentParser(description='create synthesized AM ' +
                                     'frequency markers for use with ' +
                                     'osmo-fl2k')
    parser.add_argument('output', help='output file', type=str)
    parser.add_argument('-b', '--begin-frequency',
                        help='first frequency in kHz (default = 530)',
                        dest='begin_freq',
                        type=int,
                        default=530)
    parser.add_argument('-e', '--end-frequency',
                        help='last frequency in kHz (default = 1700)',
                        dest='end_freq',
                        type=int,
                        default=1700)
    parser.add_argument('-s', '--spacing',
                        help='frequency spacing in kHz (default = 10)',
                        dest='freq_step',
                        type=int,
                        default=10)
    parser.add_argument('-o', '--order',
                        help='sigma-delta modulator order (default = 0)',
                        type=int,
                        default=0)
    parser.add_argument('-a', '--amplitude-scale',
                        help='scaling factor for amplitude (default = 1.47)',
                        type=float,
                        dest='scale',
                        default=1.47)
    parser.add_argument('-c', '--carrier-sample-rate',
                        help='sample rate for carriers (default = 4096000.)',
                        dest='carrier_sample',
                        type=float,
                        default=4800000.)
    parser.add_argument('-r', '--output-sample-rate',
                        help='output sample rate (default = 65536000.)',
                        dest='output_sample',
                        type=float,
                        default=48000000.)
    args = parser.parse_args()

    generate_voice_marker(outputfile=args.output,
                          order=args.order,
                          begin_freq=args.begin_freq,
                          end_freq=args.end_freq,
                          freq_step=args.freq_step,
                          amp_scale=args.scale,
                          f_carrier_sample=args.carrier_sample,
                          f_output_sample=args.output_sample)


if __name__ == '__main__':
    main()
