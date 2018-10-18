# What?
💥 Execute **powerful mobile device control scripts** using easy terminal commands<br>

🛠 Quick **screen capturing**, **app management**, **testing**, and much more...<br>

📱 Useful for **mobile application testing** or clearing device memory<br>

📋 **Target specific device easily**, when more than one connected, no more id copying from ``adb devices`` and explicit targeting using ``adb -s <device_id>``<br>

⏳ **Save** your precious **time**<br>

⁉️ Submit issue if you want to ask something or improve the scripts

🤝 Feel free to contribute via pull request 

⭐️ If you **love it**, hit the **star button** at the top right corner, enjoy...<br>


# Android scripts

# Installation
1. [Download](https://developer.android.com/studio/ "Android Studio") **Android Studio** or **Android command line tools**
2. Add the absolute path to the **platform-tools** folder to **PATH** variable in **.bashrc** (or equivalent file)
3. [Clone this repository](https://github.com/IntergalacticPenguin/adb-shortcuts.git "Clone")
4. **(Recommended)** Use **following commands in any directory** by adding the absolute path to the cloned files to **PATH** variable in **.bashrc** (or equivalent file)

## Capture device screen

### ascreenshot
* Save **screenshot** to **~/Desktop**
* **Filename** includes **device model**, **system API level** and current time and date
  * Specify your own filename by passing it as argument

### amultiscreenshot
* Take **screenshot** on all connected devices
* **Filename** includes **device model**, **system API level** and current time and date
  * Specify your own filename by passing it as argument

### arecord
1. **Record screen**
2. **End recording** using ``ctrl + c``
3. Save screen video footage to ~/Desktop.
  * Specify your own filename by passing it as argument

## Device control

### apaste
``apaste "john.doe@fakemail.com" password1 "5005 1002 3332 1112" "2/19" 5004``

* Insert text passed as argument into currently focused text field
* Surround argument with "" if you want to insert multi-word text into one field or use some non-alphanumeric characters
* Every following argument will move focus into the next field
  * You can quickly fill some form etc

### abounds
* Toggle **layout bounds visibility**, on lower APIs, app restart may be necessary

### aweb
* Open link passed as argument in web browser

### aoptions
* Open system settings app

### aemulator
* Start any of your installed Android emulators

### aloremipsum
* Insert long text into focused field
* Useful for testing layouts

## Application control

### alaunch
``alaunch``

``alaunch com.dummy.package.name.app``

* List third party apps and run the chosen one
* Specify package name by passing it as argument

### akill
* Restart foreground app
* Target specific app by passing package name as argument 

### aerase
* Delete foreground app data and restart it
* Target specific app by passing package name as argument 

### ainstall
``adb_install some-app-file.apk``

* Install and run .apk file
* Can overwrite existing app

### auninstall
* Uninstall third party app
* Choose from the list, or pass package name as argument

### acleanup
* Uninstall all third party packages
  * Skips some essential apps
  * Edit this script yourself or submit issue to customize the list of essential apps
* (Optional) Remove everything in /sdcard/Download directory

### agoogleplay
* Search for app on Google Play
* Pass app name as argument

## Device information

### alog
* Print system log output

### acrash
* Print log output containing application crashes only
* Set how many crash surrounding lines to print using argument

### adeviceinfo
* Print device information

# iOS scripts

# Installation
1. Install latest **Xcode and iOS command line tools** to control your iOS devices using terminal
2. Install [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") (required for **iscreenshot**) using brew or apt-get ``brew install libimobiledevice``
3. Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") (required for **irecord**), using brew or apt-get `brew install ffmpeg`
4. Install [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller") (required for application management), using brew or apt-get ``brew install --HEAD ideviceinstaller``
5. Mount developer image on your device **-> connect iOS device to USB and run Xcode**
6. [Clone this repository](https://github.com/IntergalacticPenguin/adb-shortcuts.git "Clone")
7. **(Recommended)** Use **following commands in any directory** by adding absolute path to the cloned files to **PATH** variable in **.bashrc** (or equivalent file)

## Capture device screen

### iscreenshot
* Save **screenshot** to **~/Desktop**
* **Filename** includes **device model**, **system API level** and current time and date
  * Specify your own filename by passing it as argument

### irecord
1. **Record screen** (take as many screenshots per second as possible) to **~/Desktop**
2. **End recording** using ``ctrl + c``
3. Compose .mp4 from screenshots and save it to ~/Desktop
4. (Optional) Delete screenshots
* Specify your own filename by passing it as argument

## Device control
### iinstall (experimental)
``iinstall some-app-file.ipa``

* Install .ipa file
* Can overwrite existing app
