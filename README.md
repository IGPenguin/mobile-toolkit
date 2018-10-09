# ADB shortcuts
Set of shell scripts useful for mobile application testing, you can choose target if multiple devices are detected by ADB.

# Installation
1. Install Android Debug Bridge
2. Add platform-tools folder to PATH variable in .bashrc (or equivalent file)
3. Clone this repository
4. (Optional) Add the folder with this repository to PATH variable .bashrc (or equivalent file), so you can use ADB shortcuts in any directory

## Screen capturing

#### adb_screenshot
Takes screenshot and saves it to ~/Desktop.
You can specify filename by passing it as an argument.

#### adb_multiscreenshot
Takes screenshot on all connected devices and saves it to ~/Desktop.
You can specify filename by passing it as an argument.

#### adb_record
Records device screen, you can end recording using ^C, after that video is saved to ~/Desktop.
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

## Device info

#### adb_logcat
Prints the system log output.

#### adb_deviceinfo
Prints some useful information device.

# iOS shortcuts

# Installation
1. Make sure you have the latest **xcode and command line tools** version to be able to manipulate with your iOS devices using terminal
2. Install [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") (required for **ios_screenshot**), prefferably using brew. ```brew install libimobiledevice```
3. Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") (required for **ios_record**), prefferably using brew. ```brew install ffmpeg```
4. Install [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller") (required for **ios_install**), prefferably using brew. ```brew install ideviceinstaller```
5. Your iOS device needs to have mounted developer image -> **connect your device via usb and run xcode**

## Screen capturing

#### ios_screenshot
Takes screenshot and saves it to ~/Desktop.
You can specify filename by passing it as an argument.

#### ios_record
"Records" device screen (actually its taking few screenshots every second 😅), you can end recording using ^C, after that video is composed and saved to ~/Desktop.
You can specify filename by passing it as an argument.

## Device control
#### ios_install
Installs .ipa file to the device.