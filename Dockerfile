FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update
RUN sudo echo "deb http://archive.raspberrypi.org/debian/ wheezy main" >> /etc/apt/sources.list.d/raspi.list
RUN sudo apt-get update
RUN sudo apt-get install -y oracle-java7-jdk

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
