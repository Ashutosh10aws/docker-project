FROM centos:latest
MAINTAINER ashutoshtripathicse10@gmail.com
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page269/burger-king.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip  burger-king.zip
RUN cp -rvf  food-website-template/* .
RUN rm -rf burger-king.zip  food-website-template
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 
