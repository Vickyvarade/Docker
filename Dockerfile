
FROM ubuntu
RUN apt-get update ; apt-get install mysql-server -y


FROM mysql:latest

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=pucsd
ENV MYSQL_PASSWORD=pucsd
ENV MYSQL_DATABASE=pucsdStudents


COPY test.sql ./docker-entrypoint-initdb.d

EXPOSE 3306

