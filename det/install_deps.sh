#!/usr/bin/env bash
apt update 
apt install -y nano python3.8 python3-pip python-is-python3
python -m pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113
apt-get install ffmpeg libsm6 libxext6  -y
python -m pip install -r requirements.txt
python setup.py develop
