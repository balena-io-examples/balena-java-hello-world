FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update

# Add oracle java 7 repository

RUN apt-get -y install software-properties-common
Run sudo apt-get install oracle-java7-jdk

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
