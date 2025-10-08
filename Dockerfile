FROM node:18-alpine
RUN npm install -g @stoplight/prism-cli
COPY swagger.json /app/swagger.json
WORKDIR /app
CMD ["prism", "mock", "swagger.json", "-h", "0.0.0.0", "-p", "8080"]
