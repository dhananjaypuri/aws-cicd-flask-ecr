#!/bin/bash

password="080916090676.dkr.ecr.us-east-1.amazonaws.com"
IMAGE_NAME="demo-flask-app:latest"

docker pull $password/$IMAGE_NAME
