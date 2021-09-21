FROM nvidia/cuda:11.0-cudnn8-runtime-ubuntu18.04

MAINTAINER casia

COPY get-pip.py get-pip.py

RUN \
    mv /etc/apt/sources.list.d /etc/apt/sources.list.d.bak && \
    apt-get update -y && \
    apt-get install -y python3 && \
    apt install -y python3-distutils && \
    ln -s /usr/bin/python3.9 /usr/bin/python && \
    python get-pip.py && \
    rm get-pip.py && \
    pip install torch==1.7.1+cu110 torchvision==0.8.2+cu110 torchaudio===0.7.2 -f https://download.pytorch.org/whl/torch_stable.html && \
    pip config set global.index-url https://repo.huaweicloud.com/repository/pypi/simple && \
    pip install scikit-learn==0.23.2 tqdm==4.51.0 opencv-python==4.4.0.46 matplotlib==3.3.3 &&\
    pip install albumentations==0.4.6
