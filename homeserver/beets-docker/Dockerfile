FROM ubuntu:jammy

RUN apt-get update && apt-get install -y python3 python3-pip ffmpeg git

RUN adduser beets
USER beets
RUN pip install --user beets
RUN pip install --user typing_extensions
RUN cd ~ && git clone https://github.com/seadowg/beets-extrafiles.git && cd beets-extrafiles && git checkout fix-34 && ./setup.py install --user && cd ~
COPY beets-config.yaml /home/beets/.config/beets/config.yaml

ENV PATH="$PATH:~/.local/bin/"
WORKDIR /home/beets