#!/bin/bash

docker run --rm \
    --name docker-env-poc \
    -e MYSQL_DB_PASSWORD=topsecret \
    -p "80:80" \
    hagbarddenstore/docker-env-poc
