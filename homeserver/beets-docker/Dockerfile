FROM ubuntu:jammy

RUN adduser beets
RUN apt-get update && apt-get install -y beets ffmpeg
RUN apt-get update && apt-get install -y wget unzip
COPY beets-config.yaml /home/beets/.config/beets/config.yaml

USER beets
RUN pip install --user beets-extrafiles

WORKDIR /home/beets