#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=zettai111/mlops
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run mlops --image=$dockerpath:latest --port=80 --labels app=mlops

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward mlops 8000:80
