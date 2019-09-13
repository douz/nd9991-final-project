#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=dbarahona/udacityproject

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run localdev --image=dbarahona/udacityproject --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment localdev --type=LoadBalancer --port=8000 --target-port=80
