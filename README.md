# Command line tools
Set of shell scripts for mobile application testing

#Android devices
Android Debug Bridge is required, you need to export path to platform-tools folder in .bashrc (or equivalent file). 
I also recommend you to export path to folder with this cloned repository, so you can use following commands in any directory.

##adb_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.

##adb_record
Records device screen, you can end recording using ^C, after that video is saved to ~/Desktop.

##adb_crashlog
Gets device logcat output filtered by grep for crashes and saves it to ~/Desktop. You can specify filename by passing it as an argument.

##adb_install
Installs .apk to Android device, can overwrite existing app with higher version code, grants all permissions, test packages allowed.

##adb_uninstall
Uninstalls app from device, you must specify package name as an argument.

#iOS devices
Open source library **libimobiledevice** is required. It has a lot of dependencies, but it is the best way to get screenshots from iOS devices immediately to computer. Your iOS device needs to have mounted developer image. For converting screenshots to gifs, you also need **imagemagick** and **ffmpeg**. 

##iph_screenshot
Takes screenshot and saves it to ~/Desktop. You can specify filename by passing it as an argument.

##iph_record
Takes screenshots of device screen as it runs, you can end recording using ^C, after that screenshots are merged to one .gif and saved to ~/Desktop.

#Tools
##sys_togif
Converts video to gif, takes three optional arguments:
1. input file
2. resolution (eg. 640x480)
3. output file