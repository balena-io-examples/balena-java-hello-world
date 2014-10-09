##A barebones resin.io project to demonstrate running java code

## Usage

This is a [resin.io](http://resin.io) application. Clone it, push
it to your resin endpoint and you're good to go!

###Notice:

This project installs Oracle JDK 7 (JRE7 included) to run java-based resin application on Raspbian OS.

This is a very simple project as an example for using java on raspberry. 

You can build and deploy your code on Raspberry Pi. Other JDK versions are also supported.

* You can use command CMD ["javac", "sourceFile"] to build the java source separately but with current raspbian image this command is not supported.

## Parts

The recipe for this project is as follows:

* Raspberry Pi with ethernet cable for internet connectivity and
  USB -> micro USB cable for power.
* java source file

### Resin.io Setup & Deployment

1. If you haven't got a resin.io alpha account, visit [alpha.resin.io](http://alpha.resin.io) and sign up.
1. start a new applicaton on resin.io, name it as you want, download the .zip file and extract it to your SD card. 
1. Insert the SD card into the Rasoberry pi, connect the ethernet cable and power it up using the micro-usb cable.
1. After about 10 minutes your new device should show up on the resin.io applications dashboard.
1. Setup an empty application. 

1. you can now clone down the hello.Java folder:

`$ git clone https://github.com/nghiant2710/Hello-Java.git`

then add the resin remote: (replacing <myUserName> and <myApplicationName> with yours from the resin.io dashboard)

`$ git remote add resin git@git.staging.resin.io:<myUserName>/<myApplicationName>.git`

and finally push the code to your raspberry pi:

`$ git push resin master`

Now you can enjoy java on [resin.io](http://resin.io).
 




