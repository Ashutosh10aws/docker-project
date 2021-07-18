FROM centos:latest
MAINTAINER ashutoshtripathicse10@gmail.com
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/minecraft-project.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip  minecraft-project.zip
RUN cp -rvf HTML/* .
RUN rm -rf HTML minecraft-project.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
