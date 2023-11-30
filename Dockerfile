FROM nginx:alpine
WORKDIR /app
COPY . /app
EXPOSE 8080
ENV NAME World
CMD ["nginx", "-g", "daemon off;"]
