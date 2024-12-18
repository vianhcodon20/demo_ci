FROM php:8.1-apache

# Install necessary system dependencies
RUN apt-get update -y && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libzip-dev \
    unzip \
    git \
    build-essential \
    libcurl4-openssl-dev \
    libxml2-dev \
    libicu-dev \
    libssl-dev

# Configure and install PHP extensions (gd, pdo, mbstring, etc.)
RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd pdo pdo_mysql mbstring zip tokenizer fileinfo

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set the working directory
WORKDIR /var/www/html

# Copy the application files
COPY . /var/www/html

# Clear Composer cache and install dependencies
RUN composer clear-cache
RUN composer install --no-interaction --optimize-autoloader --verbose

# Set permissions for Laravel directories
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
