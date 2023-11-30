FROM node:14
WORKDIR /app
RUN npm install
COPY . .
EXPOSE 8080
RUN npm install -g http-server
CMD ["http-server", "-p", "8080"]
