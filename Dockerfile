FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update
#RUN sudo echo "deb http://archive.raspberrypi.org/debian/ wheezy main" >> /etc/apt/sources.list.d/raspi.list
#RUN sudo apt-get update
#RUN sudo apt-get install --force-yes -y oracle-java8-jdk

RUN sudo apt-get install python-software-properties
RUN sudo add-apt-repository ppa:webupd8team/java
RUN sudo apt-get update

RUN sudo apt-get install oracle-java6-installer

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
