FROM python:3

WORKDIR /app

RUN apt-get update \
    && apt-get install lz4 \
    && ln -s /usr/bin/lz4 /usr/local/bin/lz4

RUN git clone https://github.com/thommeo/synology-cloud-sync-decrypt-tool.git . \
    && pip install -r syndecrypt/requirements.txt
