srun -K --ntasks=1 --gpus-per-task=1 -N 1 --cpus-per-gpu=10 -p A100-PBR --mem=40000 \
  --container-mounts=/netscratch/naeem:/netscratch/naeem,/home/iqbal/detrex:/home/iqbal/detrex \
  --container-image=/netscratch/enroot/nvcr.io_nvidia_tensorflow_22.03-tf2-py3.sqsh \
  --container-save=/netscratch/naeem/nvcr.io_nvidia_tensorflow_22.03-tf2-py3_mic.sqsh \
  --container-workdir=/home/iqbal/MIC/det \
  --time=2-00:00 \
  bash train_mic.sh
