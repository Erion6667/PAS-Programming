FROM node:14
WORKDIR /app
RUN nmp install
COPY . .
EXPOSE 8080
RUN nmp install -g http-server
CMD ["http-server", "-p", "8080"]
