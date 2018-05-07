# mw-voice-marker
SDR synthesized voice frequency marker generator for MW band 

See full project on [hackaday.io](https://hackaday.io/project/21145)

# Installation
I recommend installing the numpy and scipy packages into a python
virtualenv to get newer versions than your distribution may supply.
Here's a recipe you can use for installing all the required dependencies.
Adjust as required for your operating system or distribution.
```
sudo apt-get install python-virtualenv
sudo apt-get install python-pip
sudo apt-get install flite
virtualenv mw-marker-env
source mw-marker/bin/activate
pip install numpy scipy
git clone https://github.com/tedyapo/mw-voice-marker
cd mw-voice-marker
wget http://festvox.org/flite/packed/latest/voices/cmu_us_ljm.flitevox
./make_fl2k_file.py > us8192.dat
```
See [the osmocom.org](https://osmocom.org/projects/osmo-fl2k/wiki) wiki for how to install and compile osmo-fl2k.

# Usage
Use the make_fl2k_file.py script to create a data file for use with osmo-fl2k.  The simplest invocation creates a file for the US frequency allocations using an 8192 kHz sampling frequency:
```
fl2k_file -s 8192000 us_order0_8192k.dat
```
You can modify the behavior with command-line options, detailed below.  For example, to create a file with the 9 kHz European channel spacings, you can use:
```
./make_fl2k_file.py eu_order0_8192k.dat -b 531 -e 1602 -s 9 -o 0 -c 4096000 -r 8192000 
```
Here are the command line options:
```
usage: make_fl2k_file.py [-h] [-b BEGIN_FREQ] [-e END_FREQ] [-s FREQ_STEP]
                         [-o ORDER] [-a SCALE] [-c CARRIER_SAMPLE]
                         [-r OUTPUT_SAMPLE]
                         output

create synthesized AM frequency markers for use with osmo-fl2k

positional arguments:
  output                output file

optional arguments:
  -h, --help            show this help message and exit
  -b BEGIN_FREQ, --begin-frequency BEGIN_FREQ
                        first frequency in kHz (default = 530)
  -e END_FREQ, --end-frequency END_FREQ
                        last frequency in kHz (default = 1700)
  -s FREQ_STEP, --spacing FREQ_STEP
                        frequency spacing in kHz (default = 10)
  -o ORDER, --order ORDER
                        sigma-delta modulator order (default = 0)
  -a SCALE, --amplitude-scale SCALE
                        scaling factor for amplitude (default = 1.47)
  -c CARRIER_SAMPLE, --carrier-sample-rate CARRIER_SAMPLE
                        sample rate for carriers (default = 4096000.)
  -r OUTPUT_SAMPLE, --output-sample-rate OUTPUT_SAMPLE
                        output sample rate (default = 65536000.)
 ```
 To play the resulting file, use the fl2k_file command:
 ```
 fl2k_file -s 8192000 us_order0_8192k.dat
 ```
 Don't forget to specify the sampling frequency.  You may not obtain the exact desired sampling frequency.
