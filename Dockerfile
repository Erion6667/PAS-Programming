# Gunakan image base yang diinginkan
FROM nginx

# Copy file atau direktori dari host ke dalam image
COPY . .

# Tentukan port yang akan diexpose oleh container
EXPOSE 80

