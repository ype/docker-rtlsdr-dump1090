# Usage

To build your own version

```
docker build -t name_you_want/rtlsdr-dump1090 .
```

To pull prebuilt image

```
docker pull envoi/rtlsdr-dump1090
```

To run

```
# Show Dump1090 help and delete container
docker run --rm -it -p 8944:8944 --name rtlsdr-dump1090 --device=/dev/bus/usb envoi/rtlsdr-dump1090 --help

# Run dump1090 in interactive mode with Auto Gain Control and Decoding of SSR Modes 3/A & 3/C enabled
docker run --rm -it -p 8944:8944 --name rtlsdr-dump1090 --device=/dev/bus/usb envoi/rtlsdr-dump1090 --interactive --net-http-port 8944 --enable-agc --modeac
```

*NOTE: commands listed above remove the container when it exits, to retain container after exit remove use the following commands instead*

```
# Show Dump1090 help and delete container
docker run -it -p 8944:8944 --name rtlsdr-dump1090 --device=/dev/bus/usb envoi/rtlsdr-dump1090 --help

# Run dump1090 in interactive mode with Auto Gain Control and Decoding of SSR Modes 3/A & 3/C enabled
docker run -it -p 8944:8944 --name rtlsdr-dump1090 --device=/dev/bus/usb envoi/rtlsdr-dump1090 --interactive --net-http-port 8944 --enable-agc --modeac
```

### Further Reading

#### Base Image used for docker-rtlsdr-dump1090
For further details about the image in this repo, see [ype/docker-rtlsdr-base](https://github.com/ype/docker-rtlsdr-base), which is the base docker image used for docker-rtlsdr-dump1090.

#### Mutlimon-ng in Docker

[ype/docker-rtlsdr-multimon](https://github.com/ype/docker-rtlsdr-multimon) is a docker container for multimon-ng. Multimon-ng is a tool for decoding the following digital transmission modes:

- POCSAG512, POCSAG1200, POCSAG2400
- FLEX
- EAS
- UFSK1200, CLIPFSK, AFSK1200, AFSK2400, AFSK2400_2, AFSK2400_3
- HAPN4800
- FSK9600
- DTMF
- ZVEI1, ZVEI2, ZVEI3, DZVEI, PZVEI
- EEA, EIA, CCIR
- MORSE, CW

see [EliasOenal/multimon-ng](https://github.com/EliasOenal/multimon-ng) for multimon-ng repository