#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mfts/sklearn-flask-housing-prices

# Step 2:  s
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login &&\
    docker image tag sklearn-flask-housing-prices $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath