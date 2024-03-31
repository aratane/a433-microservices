#!/bin/bash

# Variabel
IMAGE_NAME="shipping-service"
TAG="latest"
GITHUB_TOKEN="#"

# Langkah 1: Membangun container image
echo "Membangun container image..."
docker build -t $IMAGE_NAME .

# Langkah 2: Login ke GitHub Packages Docker Registry dengan GitHub Token
echo "Login ke GitHub Packages Docker Registry dengan GitHub Token..."
docker login ghcr.io -u aratane -p $GITHUB_TOKEN

# Langkah 3: Menambahkan tag pada container image
echo "Menambahkan tag pada container image..."
docker tag $IMAGE_NAME ghcr.io/aratane/$IMAGE_NAME:$TAG

# Langkah 4: Mengunggah container image ke GitHub Packages
echo "Mengunggah container image ke GitHub Packages..."
docker push ghcr.io/aratane/$IMAGE_NAME:$TAG

echo "Proses selesai."
