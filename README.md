# Hello Java in balena

## Introduction

This is a very simple project that is an example of how to run Java code on a [balena](https://balena.io) device.

Other Open JDK versions are also supported. You can see them in the [OpenJDK baseimages documentation](https://balena.io/docs/reference/base-images/base-images/#OpenJDK)

### balena Setup & Deployment

1. If you haven't got a [balena](https://balena.io) account, visit [dashboard.balena-cloud.com](https://dashboard.balena-cloud.com/signup) and sign up.
1. Start a new applicaton on [balena](https://balena.io) download the .zip file, format the SD card in FAT32 and extract it to your SD card.
1. Insert the SD card into the device, power it up using the micro-usb cable and connect to the Internet.
1. After about 10 minutes your new device should show up on your application dashboard.
1. You can now clone the Hello.Java repo:

`$ git clone https://github.com/balena-projects/Hello-Java.git`

Then add the balena remote:

`$ git remote add balena git@git.balena-cloud.com:<myUserName>/<myApplicationName>.git`

And finally push the code to your Device:

`$ git push balena master`

Now you can enjoy Java code on [balena](https://balena.io).
