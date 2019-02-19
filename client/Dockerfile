FROM debian:latest

RUN apt-get update -yq \
    && apt-get upgrade -yq

RUN apt-get install -yq \
    build-essential \
    libssl-dev \
    git 

RUN git clone https://github.com/wg/wrk.git /usr/src/wrk

RUN cd /usr/src/wrk \
    && make \
    && cp wrk /usr/local/bin