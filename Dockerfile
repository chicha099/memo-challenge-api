
# create Dockerfile for php lighthouse 
# Path: Dockerfile
# syntax=docker/dockerfile:1
FROM php:8.1.3-cli
WORKDIR /
COPY . .
COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
CMD bash -c "composer install && php artisan serve"
EXPOSE 4000
