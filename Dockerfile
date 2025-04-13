# Use a lightweight web server image
FROM nginx:alpine

# Set working directory
WORKDIR /usr/share/nginx/html

# Remove the default Nginx static files
RUN rm -rf ./*

# Copy your website files into the container
COPY . .

# Expose port 80
EXPOSE 80

# Nginx starts by default, so no CMD needed
