# What?
Execute **powerful mobile device control scripts** using single terminal command, useful for mobile application testing or memory cleaning, you can target specific device easily when there is more than one connected.

# Installation
1. [Download](https://developer.android.com/studio/ "Android Studio") **Android Studio** or **Android command line tools**
2. Add the full path of **platform-tools** folder to **PATH** variable in **.bashrc** (or equivalent file)
3. [Clone this repository](https://github.com/IntergalacticPenguin/adb-shortcuts.git "Clone")
4. (Recommended) To be able to use **following commands in any directory**, add full path of the cloned files to **PATH** variable in **.bashrc** (or equivalent file)

## Screen capturing

#### adb_screenshot
Save device **screenshot** to **~/Desktop**
**Filename** includes **device model**, **system API level** and current time and date
Specify your own filename by passing it as an argument

#### adb_multiscreenshot
Take **screenshot** on all connected devices,
**Filename** includes **device model**, **system API level** and current time and date
Specify your own filename by passing it as an argument

#### adb_record
1. **Record** device **screen**
2. End recording using ^C (ctrl + c)
3. Save screen video footage to ~/Desktop.
Specify your own filename by passing it as an argument

## Device and application control

#### adb_paste
``adb_paste "john.doe@fakemail.com" password1``
Insert text passed as an argument into the focused textfield, any following argument will move focus into the next field
You can fill quickly some form by using more arguments
Surround the arguments with "" if you want to insert multi-word string into one field, or use some non-alphanumeric characters

#### adb_launch
``adb_launch``
``adb_launch com.dummy.package.name.app``
List third party apps and run the chosen one
Specify package name by passing it as an argument

#### adb_kill
Restart the foreground app

#### adb_erase
Delete foreground app data and restart it

#### adb_install
``adb_install my-app-debug.apk``
Install and run .apk file
Can overwrite existing app

#### adb_uninstall
Uninstall third party app 
Choose from the list, or pass the package name as an argument

#### adb_cleanup
Uninstall all third party packages and removes the contents of /sdcard/Download directory

#### adb_bounds
Toggle **layout bounds visibility**, on lower APIs, restarting current app (eg. using adb_kill) may be necessary

#### adb_options
Open system settings app

#### adb_web
Opens the link passed in argument in web browser.

## Device info

#### adb_logcat
Prints the system log output.

#### adb_failhunter
Prints filtered system log output with crashes only. You can set how many lines surrounding the crash should be printed via argument.

#### adb_deviceinfo
Prints some useful information device.

# iOS shortcuts

# Installation
1. Make sure you have the latest **xcode and command line tools** version to be able to manipulate with your iOS devices using terminal
2. Install [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") (required for **ios_screenshot**), preferably using brew. ```brew install libimobiledevice```
3. Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") (required for **ios_record**), preferably using brew. ```brew install ffmpeg```
4. Install [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller") (required for **ios_install**), preferably using brew. ```brew install ideviceinstaller```
5. Your iOS device needs to have mounted developer image -> **connect your device via usb and run xcode**

## Screen capturing

#### ios_screenshot
Takes screenshot and saves it to ~/Desktop.
You can specify filename by passing it as an argument.

#### ios_record
"Records" device screen (actually its taking few screenshots every second 😅), you can end recording using ^C, after that video is composed and saved to ~/Desktop.
You can specify filename by passing it as an argument.

## Device control
#### ios_install (experimental)
Installs .ipa file to the device.
