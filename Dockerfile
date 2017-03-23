# derive from our baseimage
FROM envoi/rtlsdr-base

MAINTAINER Anton S.

RUN apt-get update
RUN apt-get install -y libncurses5-dev
RUN apt-get clean
RUN ldconfig

RUN git clone --depth 1 --progress git://github.com/flightaware/dump1090.git /tmp/dump1090

WORKDIR /tmp/dump1090
RUN make CFLAGS="$CFLAGS -std=gnu99" 

WORKDIR /

ENTRYPOINT ["/tmp/dump1090/dump1090"]
