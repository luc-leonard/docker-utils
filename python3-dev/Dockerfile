#
# this file is to be used for python development.
# you need to mount your virtualenv in /usr/src/app
#

FROM python:3

WORKDIR /usr/src/app


RUN export HOST_IP="192.168.0.10" \
 && mkdir -p ~/.pip \
 && echo [global] >> ~/.pip/pip.conf \
 && echo extra-index-url = http://$HOST_IP:3141/root/public >> ~/.pip/pip.conf \
 && echo [install] >> ~/.pip/pip.conf \
 && echo trusted-host = $HOST_IP >> ~/.pip/pip.conf \
 && cat ~/.pip/pip.conf

ENTRYPOINT [ "/bin/bash"]