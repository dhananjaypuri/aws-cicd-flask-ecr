#!/bin/bash

docker container run -d --name flaskapp -p 80:5000 080916090676.dkr.ecr.us-east-1.amazonaws.com/demo-flask-app

if [ $? -eq 0 ]
then
	echo "Container started successfully !!!!!"
fi
