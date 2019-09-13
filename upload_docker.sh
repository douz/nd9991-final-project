#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=dbarahona/udacityproject

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

#Read username and password from environment variables
docker login -u $DOCKER_USER -p $DOCKER_PWD
docker tag localdev $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
