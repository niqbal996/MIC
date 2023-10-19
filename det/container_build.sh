srun -K --ntasks=1 --gpus-per-task=1 -N 1 --cpus-per-gpu=10 -p V100-32GB --mem=40000 \
  --container-mounts=/netscratch/naeem:/netscratch/naeem,/home/iqbal/MIC/det:/home/iqbal/MIC/det \
  --container-image=/netscratch/enroot/nvcr.io_nvidia_pytorch_22.03-py3.sqsh \
  --container-save=/netscratch/naeem/nvcr.io_nvidia_pytorch_22.03-py3_mic.sqsh \
  --container-workdir=/home/iqbal/MIC/det \
  --time=00-03:00 \
  --pty /bin/bash
