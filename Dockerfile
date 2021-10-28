FROM pytorch/pytorch:1.9.0-cuda11.1-cudnn8-devel
COPY requirements.txt /tmp
RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential gcc libsndfile-dev
RUN pip install -r /tmp/requirements.txt
