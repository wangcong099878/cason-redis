FROM centos:centos6

USER root

ADD ./tools/yum.repos.d/* /etc/yum.repos.d/
ADD ./tools/rpm-gpg/* /etc/pki/rpm-gpg/
RUN yum install redis

### main
ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/bin/bash", "/start.sh"]

EXPOSE 6379

