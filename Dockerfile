FROM httpd:alpine3.15
MAINTAINER Varun
COPY ./index.html /usr/local/apache2/htdocs/
EXPOSE 80