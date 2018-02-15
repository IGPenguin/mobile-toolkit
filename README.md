# Command line tools
Set of shell scripts useful for mobile application testing, lets you choose target if multiple devices are detected by ADB.

# Android devices
Android Debug Bridge is required, you need to export path to platform-tools folder in .bashrc (or equivalent file). 
I also recommend you to export path to folder with this cloned repository, so you can use following commands in any directory.

## adb_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.

## adb_multiscreenshot
Takes screenshot on all connected devices and saves it to ~/Desktop. You can specify filename by passing it as an argument.

## adb_record
Records device screen, you can end recording using ^C, after that video is saved to ~/Desktop.

## adb_insert
Inserts text passed as an argument into focused field on connected device.

## adb_greplog
Shows device logcat output filtered with string that you pass in first argument. You can also specify second argument (integer) to set how many lines surrounding your result should be shown.

## adb_packages
Lists all installed packages.

## adb_forceinstall
Installs .apk to Android device, can overwrite existing app with higher version code, grants all permissions.

## adb_uninstall
Uninstalls app from device, you must specify package name as an argument.

## adb_devices
Prints serials of all connected devices.

# iOS devices
Open source library **libimobiledevice** is required. It has a lot of dependencies, but it is the best way to get screenshots from iOS devices immediately to computer. Your iOS device needs to have mounted developer image (connect your device via usb and run xcode). For converting screenshots to gifs via iph_record, you also need **imagemagick** and **ffmpeg**. 

## iph_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.

## iph_record
Takes screenshots of device screen as it runs, you can end recording using ^C, after that screenshots are merged to one .gif and saved to ~/Desktop.