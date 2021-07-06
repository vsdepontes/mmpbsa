This image is intended to be used for MMPBSA/MMGBSA calculations using gmx_MMPBSA.  
Inside the container, you will be able to call any tool from GROMACS, AmberTools and gmx_MMPBSA from anywhere without having to specify a path for the executables and no extra installation should be necessary.  
You can find the image at: https://hub.docker.com/r/lammfar/mmpbsa  
To simply use the image, you can use `docker run -it --gpus all lammfar/mmpbsa:latest`  
The command above will download and execute the container in the interactive mode with all the GPUs enabled.  


The gmx_MMPBSA code can be found at: https://github.com/Valdes-Tresanco-MS/gmx_MMPBSA  
More information about gmx_MMPBSA can be found at: https://valdes-tresanco-ms.github.io/gmx_MMPBSA  
In order to use gmx_MMPBSA, the dependencies are also installed and configured in the image, being the main ones GROMACS and AmberTools.  
The current used version for GROMACS is the 2020.2.  
The GROMACS code can be found at: https://github.com/gromacs/gromacs  
More information about GROMACS can be found at: http://www.gromacs.org  
The current used version for AmberTools is the 21.  
More information about AmberTools can be found at: https://ambermd.org/AmberTools.php   


Note that, to use this container, you must have installed on your computer:  
- [Docker](https://docs.docker.com/engine/install)  
- Recommended NVIDIA driver  
- [NVIDIA-Docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)  

