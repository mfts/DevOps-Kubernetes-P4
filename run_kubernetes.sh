#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=mfts/sklearn-flask-housing-prices

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run sklearn-flask-housing-prices\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=sklearn-flask-housing-prices

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward sklearn-flask-housing-prices 8000:80