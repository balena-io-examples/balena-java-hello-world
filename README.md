#Hello Java in Resin.io

## Introduction

This is a very simple project that is an example of how to run Java code on a [Resin.io](http://resin.io) device.

Other Open JDK versions are also supported. You can see them in the [OpenJDK baseimages documentation](https://docs.resin.io/reference/base-images/base-images/#-a-name-openjdk-a-openjdk)

### Resin.io Setup & Deployment

1. If you haven't got a [Resin.io](http://resin.io) account, visit [dashboard.resin.io](http://alpha.resin.io) and sign up.
1. Start a new applicaton on [Resin.io](http://resin.io) download the .zip file, format the SD card in FAT32 and extract it to your SD card.
1. Insert the SD card into the device, power it up using the micro-usb cable and connect to the Internet.
1. After about 10 minutes your new device should show up on your application dashboard.
1. You can now clone the Hello.Java repo:

`$ git clone https://github.com/resin-io-projects/Hello-Java.git`

Then add the resin remote:

`$ git remote add resin git@git.resin.io:<myUserName>/<myApplicationName>.git`

And finally push the code to your Device:

`$ git push resin master`

Now you can enjoy Java code on [Resin.io](http://resin.io).
