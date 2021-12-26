FROM centos:latest
MAINTAINER ashutoshtripathicse10@gmail.com
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page274/resto.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip  resto.zip
RUN cp -rvf  resto/* .
RUN rm -rf resto.zip resto
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
