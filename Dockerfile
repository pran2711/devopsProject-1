FROM centos:7
RUN yum install -y httpd &&  apt install zip && apt install unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/creative-studio.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip creative-studio.zip
RUN cp -rvf creative-studio/* .
CMD ["/usr/sbin/httpd"."-D","FOREGROUND"]
EXPOSE 80 20 
