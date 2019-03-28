FROM ubuntu:14.04
RUN apt-get update && apt-get install -y python python-dev python-pip build-essential swig git
WORKDIR /app
RUN git clone --recursive https://github.com/cmusphinx/pocketsphinx-python/
RUN cd pocketsphinx-python && python setup.py install
RUN cd pocketsphinx-python && python setup.py install
COPY . .
