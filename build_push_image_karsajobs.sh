#!/bin/bash

# Nama pengguna Docker Hub atau GitHub Package
DOCKER_USERNAME="aratakun"

# Build Docker image untuk backend
docker build -t $DOCKER_USERNAME/karsajobs:latest .

# Login ke Docker Hub
docker login

# Push image ke Docker Hub atau GitHub Package
docker push $DOCKER_USERNAME/karsajobs:latest
