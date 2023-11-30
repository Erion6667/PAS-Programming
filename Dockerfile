FROM nginx:alpine

# Mengganti port default dari Nginx ke 8080
RUN sed -i -e 's/80/8080/g' /etc/nginx/conf.d/default.conf

# Menyalin seluruh konten dari direktori saat ini ke dalam direktori /usr/share/nginx/html di dalam container
COPY pas.html /usr/share/nginx/html/

# Menetapkan variabel lingkungan
ENV NAME World

# Expose port 8080 untuk dihubungkan dengan port 80 dari luar kontainer
EXPOSE 8080

# Menjalankan Nginx pada port 8080 ketika container dijalankan
CMD ["nginx", "-g", "daemon off;"]
