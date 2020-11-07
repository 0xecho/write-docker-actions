FROM ubuntu:18.04
MAINTAINER 0xecho <0xecho@proto-code.com>

RUN apt-get update
RUN bash -c "DEBIAN_FRONTEND=noninteractive apt-get install -y git curl zip gist build-essential xorg libssl-dev libxrender-dev wget python3 python3-pip tar"
RUN apt-get update && apt-get install -y --no-install-recommends xvfb libfontconfig libjpeg-turbo8 xfonts-75dpi fontconfig
WORKDIR /all
COPY . .
RUN pwd
RUN ls
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.3/wkhtmltox-0.12.3_linux-generic-amd64.tar.xz
RUN tar vxf wkhtmltox-0.12.3_linux-generic-amd64.tar.xz 
RUN cp wkhtmltox/bin/wk* /usr/local/bin/
RUN git clone --depth 1 https://github.com/0xecho/OneForAll.git ofa -b custom
RUN git clone --depth 1 https://github.com/0xecho/Shutter.git
RUN python3 -m pip install -U pip setuptools wheel -i https://mirrors.aliyun.com/pypi/simple/
WORKDIR /all/ofa
RUN pip3 install -r requirements.txt -i https://mirrors.aliyun.com/pypi/simple/
WORKDIR /all/Shutter
RUN pip3 install -r requirements.txt
WORKDIR /all
RUN apt install iputils-ping -y

RUN chmod +x doer_two.sh


ENTRYPOINT ["bash","/all/doer.sh"]

# FROM golang:latest
# MAINTAINER 0xecho <0xecho@proto-code.com>

# RUN apt-get update
# RUN bash -c "DEBIAN_FRONTEND=noninteractive apt-get install -y gawk git curl zip gist wget python3 python3-pip tar"
# WORKDIR /all
# COPY . .
# RUN pwd
# RUN ls
# RUN apt install iputils-ping -y

# RUN go get -u -v github.com/lc/gau
# RUN go get -u -v github.com/projectdiscovery/httpx/cmd/httpx
# RUN go get github.com/Emoe/kxss
# RUN go get github.com/hahwul/dalfox
# RUN go get -u github.com/jaeles-project/gospider

# RUN git clone https://github.com/0xecho/Arjun /all/Arjun
# RUN pip3 install requests

# RUN git clone https://github.com/maurosoria/dirsearch.git /all/dirsearch
# RUN git clone https://github.com/0xecho/ParamSpider /all/ps

# RUN chmod +x doer.sh
# ENTRYPOINT ["bash","/all/doer.sh"]
