FROM nginx:alpine

# Mengganti port default dari Nginx ke 8080
RUN sed -i -e 's/80/8080/g' /etc/nginx/conf.d/default.conf

# Menyalin seluruh konten dari direktori saat ini ke dalam direktori /app di dalam container
COPY . /app

# Menjalankan Nginx dan menyesuaikan port pada perintah CMD
CMD ["nginx", "-g", "daemon off;", "-p", "/etc/nginx/", "-c", "/etc/nginx/nginx.conf"]

