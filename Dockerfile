FROM tensorflow/tensorflow:1.7.0-devel-gpu

RUN apt-get update --fix-missing && apt-get install -y git wget libsm6 libxext6 libxrender-dev python-tk

RUN pip install menpo==0.8.1 menpofit==0.5.0 scikit-image opencv-python 

RUN git clone https://github.com/papulke/face-of-art.git /foa

WORKDIR /foa

RUN git clone https://github.com/papulke/deep_face_heatmaps