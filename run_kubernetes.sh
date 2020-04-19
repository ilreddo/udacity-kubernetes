#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="tonio155/udacity5:latest"

# Step 2
# Run the Docker Hub container with kubernetes
# docker login -u "tonio155" -p "86trappola155" docker.io
kubectl create deployment udacity5 --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity5 --type="NodePort" --port=80
kubectl port-forward deployment/udacity5 8000:80