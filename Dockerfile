FROM ubuntu:20.04

MAINTAINER "Ryan Long <ryan.long@noaa.gov>"

# Makes installation noninteractive, LEAVE THIS IN!
ENV DEBIAN_FRONTEND noninteractive

# Update apt
RUN apt-get autoclean; apt-get update;

# TODO specify python depende
# Install dependencies
RUN apt-get install -y -q git build-essential libssl-dev libffi-dev python3 python3-pip python3-dev bison flex libglib2.0-dev tree

# Clone profiler
# TODO: Specifiying a branch here, should be main once we get into prod
RUN git clone -b development https://github.com/esmf-org/esmf-profiler.git

RUN pwd && ls -lah && ls -lah / 

# TODO find out about depth 1 flag for speed
# install OS dependencies
RUN ./emsf-profiler/install_dependencies.sh

# TODO 
# Set envs for Python and LD_Library
ENV PYTHONPATH="~/esmf-profiler/dependencies/INSTALL/babeltrace2-2.0.4/lib/python3.8/site-packages:$PYTHONPATH"
ENV LD_LIBRARY_PATH="~/esmf-profiler/dependencies/INSTALL/babeltrace2-2.0.4/lib:$LD_LIBRARY_PATH"

# Install the profiler via local PIP
# TODO https://github.com/esmf-org/esmf-profiler/issues/35
RUN ["python3", "-m", "pip", "install", "-e", "."]

ADD traces/trace.tar.gz traces/

COPY go.sh .


