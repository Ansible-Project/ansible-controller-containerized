FROM adoptopenjdk:11-jre-hotspot

RUN apt-get -y update && apt-get -y install ssh locate sshpass nano mkisofs sudo adduser tar mount fdisk iputils-ping net-tools apt-utils rsync vim telnet moreutils iproute2  && apt-get clean

RUN apt-get -qq -y update && apt-get install -y git python3-pip && apt-get clean

RUN rm -rf /usr/share/man/

RUN ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''

RUN pip3 install --no-cache-dir pip ansible==2.9.6 --upgrade

RUN ln -s /usr/bin/python3 /usr/bin/python

ENV ANSIBLE_HOST_KEY_CHECKING=False

RUN pip3 install --no-cache-dir jinja2==2.11.1 netaddr==0.7.19 pbr==5.4.4 jmespath==0.9.5 ruamel.yaml==0.16.10
