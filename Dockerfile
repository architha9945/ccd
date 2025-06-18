# Use official NGINX base image
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file (and any other assets) to the nginx HTML directory
COPY ccd-cafe.html /usr/share/nginx/html/index.html

# Expose port 3000 (for host mapping clarity)
EXPOSE 3000

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
