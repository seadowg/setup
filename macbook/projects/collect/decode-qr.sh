zbarimg --raw -q $1 | base64 --decode | zlib-flate -uncompress