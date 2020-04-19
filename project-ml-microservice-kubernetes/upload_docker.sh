#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="tonio155/udacity5:latest"

# Step 2:  
# Authenticate & tag
docker login --username=tonio155
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker tag udacity5:latest $dockerpath
docker push $dockerpath