FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update

# Add oracle java 7 repository

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get -y update

# Accept the Oracle Java license
RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

# Install Oracle Java
#RUN apt-get -y install oracle-java7-installer

Run sudo apt-get install oracle-java8-jdk

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
