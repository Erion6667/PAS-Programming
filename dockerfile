FROM nginx:alpine
WORKDIR /app
COPY pas.html .
EXPOSE 8080
ENV NAME World
CMD ["nginx", "-g", "daemon off;"]
