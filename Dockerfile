#
# Run jupyter notebook under Python 3.6.4, conda 4.3.34
#
# For more details, refer to [minimal-notebook](https://github.com/jupyter/docker-stacks/tree/master/minimal-notebook).
#
FROM jupyter/minimal-notebook:8d9388cac562
MAINTAINER Takashi Someda <takashi@hacarus.com>

USER root
RUN apt-get update && apt-get install fonts-ipaexfont libglib2.0-0 git gcc -y
# for opencv
RUN apt-get install libsm-dev libxrender-dev libxext-dev -y
RUN mkdir -p /opt/local/work
RUN chown -R ${NB_USER}. /opt/local/work

USER $NB_USER
WORKDIR /opt/local/work
COPY requirements.lock .
RUN pip install -r requirements.lock
