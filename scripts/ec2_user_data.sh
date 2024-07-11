#!/bin/bash
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y docker.io

sudo systemctl start docker
sudo systemctl enable docker

sudo apt-get install -y git
git clone https://github.com/Luis-Corbi/docker-python.git
cd docker-python
sudo docker build -t my-flask-app .
sudo docker run -d -p 80:5000 my-flask-app
