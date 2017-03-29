FROM centos:7

# Install Python3.5
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python35u python35u-libs python35u-devel python35u-pip
RUN pip3.5 install django requests celery

# Add Volume
VOLUME /app
EXPOSE 8080

CMD python3.5 /app/manage.py runserver $HOSTNAME:8080
