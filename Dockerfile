FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04

RUN apt-get update && \
        apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \1
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libjasper-dev \
        libavformat-dev \
        libpq-dev \
        python3-pip \
        python-dev \
        libopencv-dev

RUN pip3 install numpy opencv-python flake8 pep8 --upgrade
RUN pip3 install jupyter matplotlib tqdm cython
RUN pip3 install plyfile
RUN pip3 install plotly

WORKDIR /workdir