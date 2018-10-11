# What?
Execute **powerful mobile device control scripts** using single terminal command, useful for mobile application testing or memory cleaning, you can target specific device easily when there is more than one connected.

# Installation
1. [Download](https://developer.android.com/studio/ "Android Studio") **Android Studio** or **Android command line tools**
2. Add the full path of **platform-tools** folder to **PATH** variable in **.bashrc** (or equivalent file)
3. [Clone this repository](https://github.com/IntergalacticPenguin/adb-shortcuts.git "Clone")
4. (Recommended) To be able to use **following commands in any directory**, add full path of the cloned files to **PATH** variable in **.bashrc** (or equivalent file)

## Screen capturing

#### adb_screenshot
Save device **screenshot** to **~/Desktop**, the **filename** includes **device model**, **Android api level** and current time and date

#### adb_multiscreenshot
Take **screenshots** on all connected devices and save them to **~/Desktop**, the **filename** includes **device model**, **Android api level** and current time and date
You can specify own filename by passing it as an argument.

#### adb_record
1. **Record** device **screen**
2. End recording using ^C (ctrl + c)
3. Save screen video footage to ~/Desktop.
You can specify filename by passing it as an argument.

#### adb_bounds
Toggles layout bounds visibility (you may have to restart your app on older devices).

## Device control

#### adb_paste
Inserts the text passed as an argument into focused field on the selected device, if there are multiple arguments, the focus will move into the next field after inserting one (so you can eg. fill in some form by separating the strings with whitespaces). Surround the text with "" if you want to insert multi-word string into one field.

#### adb_launch
Lists installed third party applications and runs the one you choose. You can specify filename by passing it as an argument.

#### adb_kill
Force-stops the foreground app and launches it again.

#### adb_erase
Deletes all data of the foreground app and restarts it.

#### adb_install
Installs .apk file to the device, and runs it (can overwrite existing app with higher version code, grants all permissions).

#### adb_uninstall
Uninstalls app from the device, you can either choose from the list of all installed third party packages, or pass the package name as an argument.

#### adb_cleanup
Uninstalls all third party packages and removes the contents of /sdcard/Download.

#### adb_options
Opens the settings app.

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
