#!/bin/bash
# Stop the running container
docker stop demo-site || true

# Remove the stopped container
docker rm demo-site || true