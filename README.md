# ADB shortcuts 
Set of shell scripts useful for mobile application testing, you can choose target if multiple devices are detected by ADB. I recommend you to export path to folder with this cloned repository, so you can call following commands in any directory.

# How to
1. install android debug bridge
2. you must have the path to the android platform-tools folder in .bashrc** (or equivalent file) to make the scripts able to use it without specifying its location

## Screen capturing

#### adb_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.

#### adb_multiscreenshot
Takes screenshot on all connected devices and saves it to ~/Desktop. You can specify filename by passing it as an argument.

#### adb_record
Records device screen, you can end recording using ^C, after that video is saved to ~/Desktop.

## App management

#### adb_paste
Inserts the text passed as an argument into focused field on the connected device, if there are multiple arguments, the focus will move into the next field after inserting one (so you can eg. fill in some form by separating the texts with whitespaces). Surround the text with "" if you want to insert multi-word string into one field.

#### adb_kill
Force-stops the foreground app and launches it again.

#### adb_erase
Deletes all data of the foreground app and restarts it.

#### adb_install
Installs .apk to Android device, can overwrite existing app with higher version code, grants all permissions.

#### adb_uninstall
Uninstalls app from device, you can specify package name as an argument, or you can choose from the list.

#### adb_listpackages
Lists all non-system packages.

#### adb_cleanup
Uninstalls all non-system packages and removes the contents of /sdcard/Download.

#### adb_options
Opens the settings app.

## Device info

#### adb_devices
Prints serials of all connected devices.

#### adb_logcat
Displays the system log.

# iOS devices
Open source library **libimobiledevice** is required. It has a lot of dependencies, but it is the best way to get screenshots from iOS devices immediately to computer. Your iOS device needs to have mounted developer image (connect your device via usb and run xcode). 

#### iph_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.