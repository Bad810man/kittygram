# FROM node:18-alpine as builder

# WORKDIR /app
# COPY package*.json ./
# RUN npm ci
# COPY . .
# RUN npm run build

# FROM alpine:latest

# WORKDIR /app
# COPY --from=builder /app/build /app/build

# COPY entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]

FROM node:18
WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci

COPY . .
RUN npm run build
RUN cp -r ./build/static/* ./build/

# RUN npm install --global http-server

# CMD ["http-server-spa", "./build", "index.html", "8000"]
