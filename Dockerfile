## Ubuntu 20.04 with CUDA 11.2 and GROMACS 2021
FROM nvcr.io/hpc/gromacs:2021


## System variables
ARG DEBIAN_FRONTEND=noninteractive
ENV MMPBSA_HOME=/home/mmpbsa
ENV PATH=/root/miniconda3/bin:$PATH
ENV AMBERHOME=/root/miniconda3/bin


## MMPBSA's main directory
RUN mkdir -p ${MMPBSA_HOME}


## Keep alive script
COPY keepalive.sh ${MMPBSA_HOME}
RUN chmod +x ${MMPBSA_HOME}/keepalive.sh


## APT packages and related configs
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y apt-utils
RUN apt-get install -y build-essential
RUN apt-get install -y python3-dev python3-pip build-essential 
RUN apt-get install -y software-properties-common
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3 10
RUN apt-get install -y git
RUN apt-get install -y cmake
RUN apt-get install -y wget
RUN apt-get install -y openmpi-bin libopenmpi-dev openssh-client
RUN apt-get install -y libgl1-mesa-glx
RUN apt-get install -y libfontconfig1 libfontconfig 
RUN apt-get install -y libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xkb1 libxkbcommon-x11-0 libxcb-util1 libxcb-shm0 libxcb-render0 libxcb-randr0 libxcb-shape0 libxcb-xinerama0 libxcb-xfixes0 libxkbcommon0 libxkbcommon-x11-0


## Conda install
WORKDIR ${MMPBSA_HOME}
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
RUN bash miniconda.sh -b -p
RUN rm miniconda.sh
RUN conda update -y -n base -c defaults conda


## Ambertools21 install 
RUN conda install -y -c conda-forge ambertools=21 compilers

## gmx_MMPBSA install
RUN conda install -y pip
RUN python -m pip install PyQt5
RUN conda install -y -c conda-forge mpi4py
RUN python -m pip install gmx_MMPBSA

