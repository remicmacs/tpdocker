FROM centos:latest

# Updating the system
RUN yum clean all && yum -y update

# Install apache
RUN yum install -y httpd php

# Copy HTML ipsum test file
COPY index.html /var/www/html

# Copy prime number PHP script
COPY prime.php /var/www/html

COPY start.sh /

RUN chmod +x start.sh

# Expose port
EXPOSE 80

# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

ENTRYPOINT ["/start.sh"]