FROM nginx:alpine

# Menyalin file index.html ke dalam direktori default Nginx
COPY index.html /usr/share/nginx/html/

# Menetapkan variabel lingkungan
ENV NAME World

# Expose port 80
EXPOSE 80

# Menjalankan Nginx pada port 80 ketika container dijalankan
CMD ["nginx", "-g", "daemon off;"]


