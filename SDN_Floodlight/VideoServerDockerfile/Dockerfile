FROM ubuntu:14.04

COPY SampleVideo_5mb.mp4 SampleVideo_5mb.mp4
COPY vlcVideoServer vlcVideoServer
COPY start_services start_services

RUN apt-get update && \
apt-get -y install vlc && \
sed -i 's/geteuid/getppid/' /usr/bin/vlc

EXPOSE 8080

ENTRYPOINT ["./start_services"]
