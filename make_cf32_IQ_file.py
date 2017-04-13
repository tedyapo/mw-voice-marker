#!/usr/bin/env python

#
# make_cf32_IQ_file.py - generate a complex float IQ (cf32) file with
#  all US allocated MW broadcasting channels announcing their frequency
#  in a synthesized voice.  Output can be read/decoded by gqrx SDR software 
#
#  requires that 'flite' speech synthesizer be installed,
#     and curently uses the cmu_us_ljm.flitevox voice which must be downloaded
#

import numpy as np
from scipy import signal
import subprocess
import wave
import struct
import tempfile
import math
import sys

f_speech = 16000 # hard-coded inside speech synthesizer
upsample_rate = 74
f_sample = f_speech * upsample_rate
#f_local_oscillator = 1.6e6
f_local_oscillator = 1.115e6
amplitude_scale = 1.679 # empirically determined to give +/- 1 output

# target frequencies in kHz
f_min = 530
f_max = 1700
f_step = 10

# quantize to 8-bits for testing, or leave in 32-bit float precision
#  (output in 32-bit float format either way)
quantization_test = False

sys.stderr.write('f_sample = ' + str(f_sample) + '\n');
sys.stderr.write('f_local_oscillator = ' + str(f_local_oscillator) + '\n');
sys.stderr.write('bandwidth = ' + str(f_sample) + '\n');


# loop over frequencies
#   and create wav files of synthesized speech frequency announcements 
wav_files = {}
frequencies = []
for freq in range(f_min, f_max + f_step/2, f_step):
  sys.stderr.write('generating voice for ' + str(freq) + ' kHz\r') 
  frequencies.append(freq)

  # convert frequency to sequence of (phoentic) numerals
  s = str(freq)
  text = ''
  for n in s:
    if n == '9':
      text += "niner "
    else:
      text += n + " "
  text += "killahurtz" # better pronounciation

  # temporary file for wav 
  wav_file = tempfile.NamedTemporaryFile()
  wav_files[freq] = wav_file
  
  # call 'flite' to generate speech from text
  speech_pipe = subprocess.call(['flite',
                                  '-voice',  'file://cmu_us_ljm.flitevox',
                                  '"' + text + '"', 
                                  wav_file.name])
  wav_file.seek(0)

sys.stderr.write('\n') 

# find longest speech clip
wavs = {}
max_frames = 0
for freq in frequencies:  
  # use wave to parse wav data
  wavs[freq] = wave.open(wav_files[freq], 'r')
  #print wavs[freq].getparams()
  nframes = wavs[freq].getnframes()
  if nframes > max_frames:
    max_frames = nframes

# modulate all signals onto I and Q
n_samples = max_frames * upsample_rate
I = np.zeros(n_samples)
Q = np.zeros(n_samples)
t = np.linspace(0., n_samples-1, n_samples)/f_sample
wl = 2. * math.pi * f_local_oscillator
scale = amplitude_scale * 1./len(frequencies)
 
for freq in frequencies:
  sys.stderr.write('modulating ' + str(freq) + ' kHz\r') 
  a = np.zeros(max_frames)
  n_frames = wavs[freq].getnframes()
  for i in range(0, n_frames):
    a[i] = struct.unpack('<h', wavs[freq].readframes(1))[0] / 32768.
  a_s = signal.resample(a, n_samples)
  wc = 2. * math.pi * freq * 1.e3
  I += scale * (0.5 + 0.5 * a_s) * np.cos((wc - wl) * t)
  Q += scale * (0.5 + 0.5 * a_s) * np.sin((wc - wl) * t)

max_amplitude = max(np.amax(I), np.amax(Q))

I = np.maximum(-1., np.minimum(I, 1.))
Q = np.maximum(-1., np.minimum(Q, 1.))

if quantization_test:
  I = np.rint(I * 127.) / 128.;
  Q = np.rint(Q * 127.) / 128.;

for i in range(0, n_samples):
  cf32_iq = struct.pack('ff', I[i], Q[i])
  sys.stdout.write(cf32_iq)

sys.stderr.write('\n')  
sys.stderr.write('max amplitude = ' + str(max_amplitude) + '\n')  
