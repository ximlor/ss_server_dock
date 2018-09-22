FROM ximlor/debian_base

RUN printf "deb http://deb.debian.org/debian stretch-backports main" > /etc/apt/sources.list.d/stretch-backports.list

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt -t stretch-backports install -y shadowsocks-libev

# Clean up
RUN DEBIAN_FRONTEND=noninteractive apt-get -y autoremove && \
    DEBIAN_FRONTEND=noninteractive apt-get clean
