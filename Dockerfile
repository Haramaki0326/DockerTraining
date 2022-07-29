FROM centos:centos7
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum install -y yum-utils && \
    yum-config-manager --disable 'remi-php*' && \
    yum-config-manager --enable remi-php72 && \
    yum update -y && \
    yum install -y php && \
    yum install -y php-pear && \
    yum install -y php-devel && \
    pecl install xdebug

