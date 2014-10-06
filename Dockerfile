FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update
RUN apt-get install -y software-properties-common
RUN sudo apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
 