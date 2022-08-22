FROM php:7.4-cli
MAINTAINER sanjay.dahiya332@gmail.com
RUN yum update
RUN yum install -y zip
RUN yum install -y unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page254/photogenic.zip /usr/src/myapp
WORKDIR /usr/src/myapp
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD [ "php", "./your-script.php" ]
EXPOSE 80



 
