FROM resin/rpi-buildstep-armv6hf:latest

RUN sudo apt-get update
Run sudo apt-get install oracle-java8-jdk

ADD . /App

#build java file
RUN javac App/Hello.java

RUN echo mono App/Hello.exe >/start
RUN chmod +x /start
