FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get install -y lib32gcc-s1 && \
    apt-get install -y libcurl4 && \
    apt-get install -y net-tools && \
    apt-get install -y libssl1.1 && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p steamcmd && \
    wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf - -C /steamcmd && \
    mkdir -p reforger

COPY launch.sh /
ENTRYPOINT ["./launch.sh"]

