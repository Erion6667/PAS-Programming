FROM nginx:alpine
WORKDIR /app
COPY pas.html /app/
EXPOSE 80
ENV NAME World
CMD ["nginx", "-g", "pas.html"]
