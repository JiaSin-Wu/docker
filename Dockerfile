FROM  nvidia/cuda:11.8.0-base-ubuntu22.04

COPY . .

RUN apt-get update &&\
    apt-get install -y python3 python3-pip

RUN pip3 install torch torchvision torchaudio

CMD ["python3", "my_cuda.py"]