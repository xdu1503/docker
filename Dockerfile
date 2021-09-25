FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel

RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

RUN pip install albumentations==0.4.6

RUN pip install python-dateutil>=2.1 pycocotools>=2.0.1

RUN pip install opencv-python ipython scipy scikit-image

RUN apt-get install git -y

RUN apt-get install vim -y
