#!/bin/bash

password="080916090676.dkr.ecr.us-east-1.amazonaws.com"
IMAGE_NAME="demo-flask-app:latest"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin $password
docker pull $password/$IMAGE_NAME
