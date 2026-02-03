FROM ubuntu:jammy

RUN apt-get update && apt-get install -y python3 python3-pip ffmpeg git

RUN adduser beets
USER beets
RUN pip install --user beets
RUN pip install --user typing_extensions
RUN pip install --user beets-copyartifacts3
COPY beets-config.yaml /home/beets/.config/beets/config.yaml

ENV PATH="$PATH:~/.local/bin/"
WORKDIR /home/beets