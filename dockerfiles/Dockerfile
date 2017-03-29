FROM centos:7
MAINTAINER Dustin Rue <dustin.rue@gmail.com>

RUN yum makecache
RUN yum -y install openssl-devel pcre-devel rpmdevtools git wget deltarpm
RUN yum -y groupinstall "Development tools"

RUN useradd mockbuild

ADD lib/run.sh usr/local/sbin/run.sh
ADD lib/download.sh usr/local/sbin/download.sh
ADD lib/Makefile /root/rpmbuild/Makefile
ADD lib/haproxy.cfg /tmp
RUN chmod 755 usr/local/sbin/run.sh
RUN chmod 755 usr/local/sbin/download.sh
RUN mkdir /output

ENTRYPOINT ["run.sh"]
