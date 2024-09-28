FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 && \
	apt-get update && \
	apt-get install -y --no-install-recommends \
	libstdc++6:i386 \
	libssl3:i386 \
	openssl:i386 && \
	useradd -m user

USER server

WORKDIR /home/server

COPY samp03svr samp-npc announce /opt/samp/

CMD ["/opt/samp/samp03svr"]
