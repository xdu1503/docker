FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

RUN pip install albumentations==0.4.3

RUN pip install  numpy

RUN pip install  scikit-image

RUN pip install  dominate

RUN pip install  tensorboardX

RUN pip install  scipy

RUN pip install  opencv-python

RUN pip install  visdom

RUN pip install  Pillow

RUN pip install  tb-nightly

RUN pip install  wandb

RUN pip install  matplotlib

RUN pip install  opencv-python==4.1.2.30

RUN pip install  pudb==2019.2

RUN pip install  imageio==2.9.0

RUN pip install  imageio-ffmpeg==0.4.2

RUN pip install  pytorch-lightning==1.4.2

RUN pip install  omegaconf==2.1.1

RUN pip install  test-tube>=0.7.5

RUN pip install  streamlit>=0.73.1

RUN pip install  einops==0.3.0

RUN pip install  torch-fidelity==0.3.0

RUN pip install  transformers==4.3.1

RUN pip install  torchmetrics==0.5.0

RUN pip install  kornia==0.5.0

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A4B469963BF863CC

RUN apt-get -y update

RUN apt --fix-broken -y install

RUN apt-get install git -y

RUN apt-get install vim -y

RUN apt-get install apt-file -y

RUN apt-get -y update

RUN apt-file update

RUN apt-file search libSM.so.6

RUN apt-get install libsm6 -y

RUN apt-get install libxrender-dev -y
