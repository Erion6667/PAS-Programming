FROM nginx:alpine

# Menyalin seluruh konten dari direktori saat ini ke dalam direktori /usr/share/nginx/html di dalam container
COPY pas.html /usr/share/nginx/html/

# Menetapkan variabel lingkungan
ENV NAME World

# Expose port 8080 untuk dihubungkan dengan port 80 dari luar kontainer
EXPOSE 8080


