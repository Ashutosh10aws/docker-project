FROM centos:latest
MAINTAINER ashutoshtripathicse10@gmail.com
RUN yum install -y httpd \
zip \
unzip 
ADD blessed.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip   blessed.zip
RUN cp -rvf  blessed/* .
RUN rm -rf blessed blessed.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
