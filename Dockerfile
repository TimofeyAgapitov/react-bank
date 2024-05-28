FROM node:20.11.0-alpine AS builder
WORKDIR /app
COPY .npmrc .
COPY package*.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:1.25.5-alpine
COPY --from=builder /app/dist /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]