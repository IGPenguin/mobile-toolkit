# What?
💥 Execute **powerful mobile device control scripts** using easy terminal commands<br>

🛠 Quick **screen capturing**, **app management** and much more<br>

📱 Useful for **mobile application testing** or clearing device memory<br>

📋 **Target specific device easily**, no more id copying from ``adb devices`` and explicit using ``adb -s <device_id>``<br>

⏳ **Save** your precious **time**<br>

⁉️ Submit issue if you want to ask something or improve the scripts

🤝 Feel free to **contribute via pull request**

⭐️ If you **love it**, hit the **star button** at the top right corner<br>

# Installation
1. Clone this repository ``git clone https://github.com/IntergalacticPenguin/mobile-toolkit.git`` 
2. [Install](https://brew.sh/ "Homberew") Homebrew package manager
3. Setup Android stuff
	* [Download](https://developer.android.com/studio/ "Android Studio") and install **Android Studio** or **Android command line tools**
	* Add the absolute path to the **platform-tools** folder to **PATH** variable in **.bash_profile** ``PATH=$PATH:/Users/dummyuser/mobile-toolkit export PATH``
	* **Allow USB debugging** on your device, connect it and **authorize** your computer (click OK on device screen)
4. Setup iOS stuff
	* Install latest **Xcode and iOS command line tools** using App Store
	* Install [usbmuxd](https://github.com/libimobiledevice/usbmuxd "usbmuxd"), [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") and  [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller")  ``brew install --HEAD usbmuxd && brew install --HEAD libimobiledevice && brew install --HEAD ideviceinstaller``
	* Mount developer image on your device **-> connect iOS device to USB**, **authorize** your computer (click "Trust" on device screen) and **run Xcode**
5. Use following **commands in any directory** by adding the absolute path to the cloned folder to **PATH** variable in **.bash_profile** (or equivalent file)  

# Android scripts

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

## Application management

### alaunch
``alaunch``

``alaunch com.dummy.package.name.app``

* List third party apps and run the chosen one
* Specify package name by passing it as argument

### akill
``akill``

``akill com.dummy.package.name.app``

* Restart foreground app
* Target specific app by passing package name as argument

### aerase
``aerase``

``aerase com.dummy.package.name.app``

* Delete foreground app data and restart it
* Target specific app by passing package name as argument

### ainstall
``adb_install some-app-file.apk``

* Install and run .apk file
* Can overwrite existing app

### auninstall
``auninstall``

``auninstall com.dummy.package.name.app``

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

### adevice
* Print device information
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")

# iOS scripts

## Capture device screen

### iscreenshot
* Save **screenshot** to **~/Desktop**
* **Filename** includes **device model**, **system version** and current time and date
  * Specify your own filename by passing it as argument

### irecord
* Run **QuickTime** and open video source picker (so you can choose device right away)
  * You may have to allow some system permission, so the script can access the picker

### igif
Required: Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") (required for **igif**), using brew or apt-get `brew install ffmpeg`

1. **Record screen** (take as many screenshots per second as possible) to **~/Desktop**
2. **End recording** using ``ctrl + c``
3. Compose .mp4 from screenshots and save it to ~/Desktop
4. (Optional) Delete screenshots
* **Filename** includes **device model**, **system version** and current time and date
  * Specify your own filename by passing it as argument

## Application management
### iinstall
``iinstall some-app-file.ipa``

* Install .ipa file
* Can overwrite existing app

### iuninstall
``iuninstall``

``iuninstall com.dummy.package.name.app``

* Uninstall third party app
* Choose from the list, or pass package name as argument

### icleanup
* Uninstall all third party packages
  * Skips some essential apps
  * Edit this script yourself or submit issue to customize the list of essential apps

## Device management
### ireboot
* Reboot device

### idevice
* Print device information
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")
