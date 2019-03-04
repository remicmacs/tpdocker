FROM centos:latest

# Updating the system
RUN yum clean all && yum -y update

# Install apache
RUN yum install -y httpd php

# Copy HTML ipsum test file
COPY index.html /var/www/html

# Copy prime number PHP script
COPY prime.php /var/www/html

# Expose port
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]