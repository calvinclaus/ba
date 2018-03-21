FROM debian:stable
COPY ivy.deb /ivy.deb
RUN apt-get update && apt-get -y install gdebi && yes | gdebi ivy.deb
