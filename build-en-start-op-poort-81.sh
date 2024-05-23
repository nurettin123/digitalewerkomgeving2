#!/bin/bash
# Build the Docker image
docker build -t demo-site .

# Stop and remove any existing container named demo-site
docker stop demo-site || true
docker rm demo-site || true

# Run a new container from the demo-site image on port 81
docker run -d -p 81:80 --name demo-site demo-site