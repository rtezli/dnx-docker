FROM debian:wheezy

MAINTAINER Robert Tezli <robert@pixills.com>

ENV DNX_RUNTIME coreclr
ENV DNX_VERSION 1.0.0-rc1-update1
ENV PATH $PATH:/usr/lib/x86_64-linux-gnu

COPY *.sh /tmp/scripts/

RUN echo "deb http://ftp.de.debian.org/debian jessie main" >> /etc/apt/sources.list &&\
    apt-get update -qq &&\
    apt-get install -y -qq unzip bsdtar curl libcurl3 libcurl3-gnutls libssl1.0.0 libicu52 libunwind8 autoconf automake build-essential libtool &&\
    useradd -p '' -m -d /home/service service &&\
    bash /tmp/scripts/setup-libuv.sh &&\
    apt-get purge -y -qq bsdtar autoconf automake build-essential &&\
    apt-get autoremove -y -qq &&\
    rm -rf /usr/share/doc &&\
    rm -rf /usr/share/man &&\
    rm -rf /var/run &&\
    chmod 777 /tmp/scripts
