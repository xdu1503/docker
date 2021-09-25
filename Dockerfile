FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install albumentations==0.4.6
