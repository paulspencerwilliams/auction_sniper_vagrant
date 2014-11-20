FROM ubuntu:14.04
MAINTAINER Paul Williams
RUN apt-get update 
RUN apt-get install -y build-essential
RUN apt-get install -y software-properties-common 
RUN apt-get install -y libssl-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libsqlite3-dev 
RUN DEBIAN_FRONTEND=noninteractive apt-add-repository -y ppa:brightbox/ruby-ng
RUN apt-get -y update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ruby1.9.1-dev
RUN gem install bundler 
RUN gem install tzinfo -v 0.3.22
RUN gem install vines
RUN vines init localhost
WORKDIR /localhost
CMD vines start
#CMD bash -C '/usr/local/bin/vines start';'/bin/bash'
