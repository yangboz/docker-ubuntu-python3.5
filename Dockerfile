FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y software-properties-common curl \
    && add-apt-repository ppa:jonathonf/python-3.5 \
    && apt-get remove -y software-properties-common \
    && apt autoremove -y \
    && apt-get update \
    && apt-get install -y python3.5 \
    && curl -o /tmp/get-pip.py "https://bootstrap.pypa.io/get-pip.py" \
    && python3.5 /tmp/get-pip.py \
    && apt-get remove -y curl \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*
