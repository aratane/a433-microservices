FROM node:18-alpine

# Mengatur direktori kerja dalam filesystem image Docker.
WORKDIR /src

# Menyalin file atau direktori dari sumber (.) ke filesystem image di path /src
COPY . .

# Menginstal dependensi aplikasi.
RUN npm install

# Ini hanya akan menginstal dependensi di package-lock.json.
RUN npm ci

RUN apk add --no-cache bash

# Memberi tahu Docker bahwa kontainer listen port jaringan yang ditentukan saat runtime.
# Di sini diatur ke 3000
EXPOSE 3000

# atur image Docker untuk menjalankan aplikasi
CMD ["node", "index.js"]
