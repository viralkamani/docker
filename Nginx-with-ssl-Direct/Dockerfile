# Use official Nginx image as the base image
FROM nginx:latest

# Install Certbot and dependencies
RUN apt-get update && \
    apt-get install -y certbot python3-certbot-nginx && \
    apt-get clean

# Copy your Nginx configuration file (to handle SSL)
COPY nginx.conf /etc/nginx/nginx.conf

# Expose HTTP (80) and HTTPS (443) ports
EXPOSE 80 443

# Start Nginx and use Certbot to obtain SSL certificates at runtime
CMD bash -c "nginx && certbot --nginx -d Domain_Name --agree-tos --email ${EMAIL} --non-interactive && nginx -g 'daemon off;'"

