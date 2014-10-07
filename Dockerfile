FROM resin/rpi-raspbian:wheezy

RUN echo 'deb http://archive.raspberrypi.org/debian/ wheezy main' >> /etc/apt/sources.list.d/raspi.list
ADD ./raspberrypi.gpg.key /key/
RUN apt-key add /key/raspberrypi.gpg.key
RUN apt-get update
RUN apt-get -y upgrade
RUN echo oracle-java7-jdk shared/accepted-oracle-license-v1-1 select true| /usr/bin/debconf-set-selections
RUN apt-get -y install oracle-java7-jdk 
RUN apt-get clean

ADD . /App

#build java file
WORKDIR /App
Run javac Hello.java

RUN echo 'java -cp . Hello' >/start
RUN chmod +x /start
 