FROM nginx:alpine
WORKDIR /app
COPY . .
EXPOSE 8080
ENV NAME World
CMD ["nginx", "-p", "8080"]
