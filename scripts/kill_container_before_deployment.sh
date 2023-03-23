#!/bin/bash
if docker ps -a --format "{{.ID}} {{.Names}}" | grep flaskapp$
then
    container_id=$(docker ps -a --format "{{.ID}} {{.Names}}" | grep flaskapp$ | awk '{print $1}')
    container_name=$(docker ps -a --format "{{.ID}} {{.Names}}" | grep flaskapp$ | awk '{print $2}')
    echo "Killing Running container $container_id `date`"
    docker kill $container_id
    echo "Removing container $container_name at `date`"
    docker container rm -f ${container_name}
fi

