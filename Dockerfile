FROM pytorch/pytorch:1.11.0-cuda11.3-cudnn8-devel

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install albumentations==0.4.6

RUN pip install ttach

RUN pip install timm

RUN pip install mmcv

RUN pip install attr

RUN pip install pandas

RUN pip install IPython

RUN pip install python-dateutil>=2.1 pycocotools>=2.0.1

RUN pip install opencv-python ipython scipy scikit-image

RUN pip install tb-nightly

RUN pip install transformers

RUN pip install torchsummary

RUN apt-get -y update

RUN apt-get install git -y

RUN apt-get install vim -y
