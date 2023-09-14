FROM ubuntu:latest
LABEL authors="evie"
RUN docker-php-ext-install opcache
ENTRYPOINT ["top", "-b"]