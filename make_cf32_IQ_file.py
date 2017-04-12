#!/usr/bin/env python

#
# make_cf32_IQ_file.py - generate a complex float (cf32) file with
#  all US allocated MW broadcasting channels announcing their frequency
#  in a synthesized voice.  Output can be read/decoded by gqrx SDR software 
#
#  requires thta 'flite' speech synthesizer be installed,
#     and curently uses the cmu_us_ljm.flitevox voice which must be downloaded
#

import subprocess
import wave
import struct
import tempfile
import math
import sys


# loop over 530 - 1700  @ 10 kHz spacing (118 channels)
#   and create wav files of synthesized speech frequency announcements 
wav_files = {}
frequencies = []
for freq in range(530, 1705, 10):
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

# find longest speech clip
wavs = {}
amplitudes = {}
max_frames = 0
for freq in frequencies:  
  amplitudes[freq] = 0.
  # use wave to parse wav data
  wavs[freq] = wave.open(wav_files[freq], 'r')
  #print wavs[freq].getparams()
  nframes = wavs[freq].getnframes()
  if nframes > max_frames:
    max_frames = nframes


# modulate and combine signals
# hard-coded to upsample 16kHz speech samples by 200x to obtain
#   3.2MHz RF samples
t = 0.
dt = 1./3.2e6
wl = 2. * math.pi * 1.6e6
scale = 1./len(frequencies)
for frame in range(0, max_frames):
  for freq in frequencies:
    if frame >= wavs[freq].getnframes():
      amplitudes[freq] = 0.
    else:
      amplitudes[freq] = struct.unpack('<h',
                                       wavs[freq].readframes(1))[0] / 32768.

  for upsample in range(0, 200):
    t += dt
    I = 0.
    Q = 0.
    for freq in frequencies:
      wc = 2. * math.pi * freq * 1.e3
      I += scale * (0.5 + 0.5 * amplitudes[freq]) * math.cos(t * (wc - wl))
      Q += scale * (0.5 + 0.5 * amplitudes[freq]) * math.sin(t * (wc - wl))
    cf32_iq = struct.pack('ff', I, Q)
    sys.stdout.write(cf32_iq)
  
