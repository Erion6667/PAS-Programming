FROM nginx:alpine

# Mengganti port default dari Nginx ke 8080
RUN sed -i -e 's/80/8080/g' /etc/nginx/conf.d/default.conf

# Menyalin seluruh konten dari direktori saat ini ke dalam direktori /app di dalam container
COPY . /app

# Menetapkan variabel lingkungan
ENV NAME World

# Menjalankan Nginx pada port 8080 ketika container dijalankan
CMD ["nginx", "-g", "daemon off;"]

