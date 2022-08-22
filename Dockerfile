FROM centos:latest
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum update
RUN yum install -y nginx
RUN yum install -y zip
RUN yum install -y unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80



 
