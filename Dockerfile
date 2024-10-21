# Use the official WordPress image as the base image
FROM wordpress:latest

# Copy your custom themes and plugins
COPY ./wp-content/themes/ /var/www/html/wp-content/themes/
COPY ./wp-content/plugins/ /var/www/html/wp-content/plugins/

# Optional: Set up environment variables for WordPress
ENV WORDPRESS_DB_HOST=db
ENV WORDPRESS_DB_USER=root
ENV WORDPRESS_DB_PASSWORD=password
ENV WORDPRESS_DB_NAME=wordpress

# Expose port 80 to the host
EXPOSE 80