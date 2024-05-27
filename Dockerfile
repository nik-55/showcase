# Base image
FROM node:12-alpine AS base

# Install dependencies
FROM base AS dependencies
WORKDIR /app
COPY ./package.json .
COPY ./package-lock.json .

RUN npm install
RUN npm install --global gulp-cli

COPY . .

CMD ["npm", "run", "watch"]
