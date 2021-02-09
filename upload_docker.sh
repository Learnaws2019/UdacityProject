#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="myapp"

# Step 2:  
# Authenticate & tag
docker logout
docker login -u amitshr90
echo "Docker ID and Image: $dockerpath"
docker tag myapp  amitshr90/myapp:1.0
# Step 3:
# Push image to a docker repository
docker image push amitshr90/myapp:1.0
