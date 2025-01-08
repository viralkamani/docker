# Stage 1: Build
FROM node:16 AS builder  
WORKDIR /app  
COPY package*.json ./  
RUN npm install  
COPY . .  
RUN npm run build  

# Stage 2: Production
FROM nginx:alpine  
WORKDIR /usr/share/nginx/html  
COPY --from=builder /app/build .  
EXPOSE 80  
CMD ["nginx", "-g", "daemon off;"]
