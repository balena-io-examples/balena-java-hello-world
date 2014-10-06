FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update
#RUN sudo echo "deb http://archive.raspberrypi.org/debian/ wheezy main" >> /etc/apt/sources.list.d/raspi.list
#RUN sudo apt-get update
#RUN sudo apt-get install --force-yes -y oracle-java8-jdk

RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee /etc/apt/sources.list.d/webupd8team-java.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886
RUN apt-get update
RUN apt-get install oracle-java8-installer

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
