#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile dengan nama item-app dan tag v1
docker build -t ghcr.io/aratane/item-app:v1 .

# Melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format GitHub Container Registry
docker tag ghcr.io/aratane/item-app:v1 ghcr.io/aratane/item-app:v1

# Login ke GitHub Container Registry
docker login ghcr.io -u aratane

# Mengunggah image ke GitHub Container Registry
docker push ghcr.io/aratane/item-app:v1
