FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y lib32gcc1
RUN apt-get install -y libcurl4
RUN apt-get install -y net-tools
RUN apt-get install -y libssl1.1
RUN apt-get install -y wget
RUN mkdir -p steamcmd
RUN wget -qO- 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxf - -C /steamcmd
RUN mkdir -p reforger
COPY launch.sh /
ENTRYPOINT ["./launch.sh"]
