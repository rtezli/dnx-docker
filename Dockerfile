FROM debian:wheezy

MAINTAINER Robert Tezli <robert@pixills.com>

ENV DNX_RUNTIME coreclr
ENV DNX_VERSION 1.0.0-rc1-update1

RUN bash -c "echo \"deb http://ftp.de.debian.org/debian sid main\" | tee -a /etc/apt/sources.list &&\
 apt-get update &&\
 apt-get install -y -qq unzip curl libicu52 libunwind8 && \
 curl -sSL https://raw.githubusercontent.com/aspnet/Home/dev/dnvminstall.sh | bash &&\
 source ~/.dnx/dnvm/dnvm.sh &&\
 chmod +x ~/.dnx/dnvm/dnvm.sh &&\
 dnvm install $DNX_VERSION -OS linux -r coreclr -a x64 -p -g -alias default &&\
 apt-get purge -y -qq unzip &&\
 apt-get autoremove -y -qq"
