FROM circleci/php:7.0-fpm-node-browsers

RUN sudo apt-get update && sudo apt-get install -y pv mysql-client sshpass
RUN sudo docker-php-ext-install mysqli pdo pdo_mysql
