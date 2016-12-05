FROM ubuntu:16.04
MAINTAINER  PeertoPark
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y software-properties-common python-software-properties && apt-get autoremove
RUN LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
RUN apt-get update && apt-get install -y php5.6-cli php5.6-mbstring php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-curl composer unzip && apt-get autoremove
ENTRYPOINT ["/usr/bin/php"]
CMD ["-a"]
