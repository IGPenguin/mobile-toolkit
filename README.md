# What?
Execute **powerful mobile device control scripts** using single terminal command, useful for mobile application testing or memory cleaning, you can target specific device easily when there is more than one connected

# Android scripts

# Installation
1. [Download](https://developer.android.com/studio/ "Android Studio") **Android Studio** or **Android command line tools**
2. Add the full path of **platform-tools** folder to **PATH** variable in **.bashrc** (or equivalent file)
3. [Clone this repository](https://github.com/IntergalacticPenguin/adb-shortcuts.git "Clone")
4. (Recommended) To be able to use **following commands in any directory**, add full path of the cloned files to **PATH** variable in **.bashrc** (or equivalent file)

## Capture device screen

### ascreenshot
Save device **screenshot** to **~/Desktop**
**Filename** includes **device model**, **system API level** and current time and date
Specify your own filename by passing it as an argument

### amultiscreenshot
Take **screenshot** on all connected devices,
**Filename** includes **device model**, **system API level** and current time and date
Specify your own filename by passing it as an argument

### arecord
1. **Record** device **screen**
2. End recording using ^C ``ctrl + c``
3. Save screen video footage to ~/Desktop.
Specify your own filename by passing it as an argument

### apaste
```apaste "john.doe@fakemail.com" password1```
Insert text passed as an argument into the focused textfield, any following argument will move focus into the next field
You can fill quickly some form by using more arguments
Surround the arguments with "" if you want to insert multi-word string into one field, or use some non-alphanumeric characters

## Device control

### abounds
Toggle **layout bounds visibility**, on lower APIs, restarting current app (eg. using adb_kill) may be necessary

### aweb
Open link passed as an argument in web browser

### aoptions
Open system settings app

## Application control

### alaunch
``alaunch``
``alaunch com.dummy.package.name.app``
List third party apps and run the chosen one
Specify package name by passing it as an argument

### akill
Restart the foreground app

### aerase
Delete foreground app data and restart it

### ainstall
``adb_install my-app-debug.apk``
Install and run .apk file
Can overwrite existing app

### auninstall
Uninstall third party app
Choose from the list, or pass the package name as an argument

### acleanup
Uninstall all third party packages
Remove the contents of /sdcard/Download directory

## Device information

### alogcat
Print system log output

### acrash
Print log output containing application crashes only
Set how many crash surrounding lines to print via argument

### ainfo
Prints some useful information device.

# iOS scripts

# Installation
1. Install latest **Xcode and iOS command line tools** to control your iOS devices using terminal
2. Install [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") (required for **iscreenshot**) using brew or apt-get ```brew install libimobiledevice```
3. Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") (required for **igif**), preferably using brew. ```brew install ffmpeg```
4. Install [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller") (required for application management), using brew or apt-get ```brew install ideviceinstaller```
5. Mounted developer image on your device **-> connect the device to USB and run Xcode**

## Capture iOS device screen

### ios_screenshot
Take screenshot and save it to ~/Desktop.
Specify filename by passing it as an argument

### ios_record
Create device screen gif, you can end recording using ^C, after that video is composed and saved to ~/Desktop.
You can specify filename by passing it as an argument.

## Device control
### ios_install (experimental)
Installs .ipa file to the device.
