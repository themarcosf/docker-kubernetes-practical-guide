FROM composer:2.5.7

# Set working directory
WORKDIR /var/www/html

# Set entrypoint
ENTRYPOINT [ "composer", "--ignore-platform-reqs" ]