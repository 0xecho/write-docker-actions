FROM ubuntu:latest
MAINTAINER 0xecho <0xecho@proto-code.com>

RUN apt-get update
RUN apt-get install -y git zip
RUN apt-get install -y python3 python3-pip
WORKDIR /all
RUN git clone --depth 1 https://github.com/0xecho/OneForAll.git ofa
WORKDIR /all/ofa
RUN python3 -m pip install -U pip setuptools wheel -i https://mirrors.aliyun.com/pypi/simple/
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
  
WORKDIR /all
RUN git clone --depth 1 https://github.com/sullo/nikto.git nkto
RUN chmod +x nkto/program/nikto.pl
RUN ln -s /all/nkto/program/nikto.pl /usr/bin/nikto
RUN apt install perl libnet-ssleay-perl openssl libauthen-pam-perl libio-pty-perl -y
RUN apt install iputils-ping -y
COPY . .
RUN chmod +x doer.sh



ENTRYPOINT ["bash","/all/doer.sh"]
