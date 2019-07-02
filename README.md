# Mobile Toolkit
💥 Execute **powerful mobile device control scripts** using easy terminal commands<br>

🛠 Capture the screen and manage both **Android and iOS** devices<br>

📱 **Test mobile applications**, clear device memory and much more<br>

📋 **Handle multiple devices effortlessly** via choosing from the list

⏳ **Save your precious time**, stop doing repetitive tasks manually<br>

⁉️ **Submit issue** if you want to ask anything or improve the scripts

🤝 Any **pull request** contribution is **highly appreciated**

⭐️ If you **love Mobile Toolkit**, hit the **star button** at the top right corner and **make me happy**<br>

# Installation
1. **Open terminal**
2. **Clone this repository** `git clone https://github.com/IntergalacticPenguin/mobile-toolkit.git`
3. **Setup Android** tools
	* [Download](https://developer.android.com/studio/ "Android Studio") and install **Android Studio** or **Android command line tools**
	* Add the absolute path to the **platform-tools** folder to **PATH** variable in **.bash_profile** `PATH=$PATH:/Users/dummyuser/Library/Android/sdk/platform-tools export PATH`
	* **Allow USB debugging** on your device, connect it and **authorize** your computer (click OK on device screen)
4. **Setup iOS** tools
	* Install latest **Xcode and iOS command line tools** using App Store
	* [Install](https://brew.sh/ "Homberew") **Homebrew** package manager
	* Install [usbmuxd](https://github.com/libimobiledevice/usbmuxd "usbmuxd"), [libimobiledevice](https://github.com/libimobiledevice/libimobiledevice "libimobiledevice") and  [ideviceinstaller](https://github.com/libimobiledevice/ideviceinstaller "ideviceinstaller")  `brew install --HEAD usbmuxd && brew install --HEAD libimobiledevice && brew install --HEAD ideviceinstaller`
	* Mount developer image on your device **-> connect iOS device to USB**, **authorize** your computer (click "Trust" on device screen) and **run Xcode**
5. (Optional) Use following **commands in any directory** in your terminal
	* Edit your **.bash_profile** file (or .zshrc if you have zsh shell) in your home directory `nano ~/.bash_profile`
	* Add the absolute path to this cloned repository to **PATH** variable in **.bash_profile** (or equivalent file) by **inserting the following code at the end of the file**, make sure to **replace the "dummyuser" with your profile name** `PATH=$PATH:/Users/dummyuser/mobile-toolkit export PATH`

# Android scripts

## Capture screen

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
2. **End recording** using `ctrl + c`
3. Save screen video footage to ~/Desktop.
  * Specify your own filename by passing it as argument

## Control device

### apaste
`apaste "john.doe@fakemail.com" password1 "5005 1002 3332 1112" "2/19" 5004`

* `apaste <text>` Insert text into currently focused field
* `apaste "john.doe@fakemail.com" password1 ` Every additional argument will be inserted into subsequent field
* `apaste "Lorem ipsum dolor sit amet."` use "" to insert multi-word text into one field

### abounds
* Toggle **layout bounds visibility**
* App restart may be necessary on lower APIs

### aurl
* `aurl "google.com"` Open link passed as an argument in web browser or corresponding application

### aanimationspeed
* `aanimationspeed` set slow animation speed
* `aanimationspeed <any-number>` set animation speed to <any-number> times slower than default
* Press ENTER to reset to default

### afontscale
* `afontscale` set font scale to largest common setting (1.3x bigger than default)
* `afontscale <any-number>` set font scale to <any-number> times larger than default
* Press ENTER to reset to default

### aoptions
* `aoptions` Open system settings on a specific activity
* You can choose from quick presets
	* Developer settings
	* Locale settings
	* Date & time
	* Wifi settings
	* Storage management
	* Power usage
	* Root settings activity
* Or you can choose from exhaustive list of all available options
* `aoptions 1` you can also specify preset as argument

### aloremipsum
* Insert long text into focused field
* Useful for testing layouts

### acamera
* Start camera application

## Manage applications

### alaunch
* `alaunch` List third party apps and choose one to run it
* `alaunch com.dummy.package.name.app` Run app by package name

### aappinfo
* `aappinfo` List foreground app information
  * Package name
	* Version
	* Last update
	* minSdk and targetSdk
	* Permissions
* (Optional) Open application settings
* `aappinfo com.dummy.package.name.app` Target specific app by passing package name as argument

### akill
* `akill` Restart foreground app
* `akill com.dummy.package.name.app` Target specific app by passing package name as argument

### aerase
* `aerase` Delete foreground app data and restart it
* `aerase com.dummy.package.name.app` Target specific app by passing package name as argument

### ainstall
* `ainstall some-app-file.apk` Install and run .apk file
* `ainstall -a some-app-file.apk` Install and run on all devices
* Can overwrite existing app

### auninstall
* `auninstall` Uninstall third party app, choose from the list
* `auninstall com.dummy.package.name.app` pass package name as argument

### awipe
* Uninstall all third party packages
  * Skips some essential apps
  * Edit this script yourself to customize the list of essential apps
* (Optional) Remove everything in /sdcard/Download directory

### apermissionreset
* Revoke ALL runtime permissions for ALL (even system) apps.

### agoogleplay
* `agoogleplay "Dummy App"` Search for app on Google Play
* Pass app name as argument

## Manage device

### alog
* Print system log output

### acrash
* Print log output containing application crashes only
* Set how many crash surrounding lines to print using argument

### adevicecheck
* Print device information
* Perform basic checks and apply preset settings if allowed
  * 10 minutes screen timeout
  * Manual maximum brightness
  * Automatic date
  * Disabled notification sounds
  * Internet connectivity and WIFI name
  * Font scale
  * enUS locale
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")

### aemulator
* Start any of your installed Android emulators

# iOS scripts

## Capture screen

### iscreenshot
* Save **screenshot** to **~/Desktop**
* **Filename** includes **device model**, **system version** and current time and date
  * Specify your own filename by passing it as argument

### irecord
* Run **QuickTime** and open video source picker (so you can choose device right away)
  * You may have to allow some system permission, so the script can access the picker

### igif
**Required**: Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") `brew install ffmpeg`

1. **Record screen** (take as many screenshots per second as possible) to **~/Desktop**
2. **End recording** using `ctrl + c`
3. Compose .mp4 from screenshots and save it to ~/Desktop
4. (Optional) Delete screenshots
* **Filename** includes **device model**, **system version** and current time and date
  * Specify your own filename by passing it as argument

## Manage applications
### iinstall
`iinstall some-app-file.ipa`

* Install .ipa file
* Can overwrite existing app

### iuninstall
* `iuninstall` Uninstall third party app, choose from the list
* `iuninstall com.dummy.package.name.app` pass bundle name as argument

### iwipe
* Uninstall all third party packages
  * Skips some essential apps
  * Edit this script yourself to customize the list of essential apps

## Manage device

### icrashlogs
* Gather crash logs from the device to **~/Desktop** (be patient 😅)
* You can import logs to Xcode to make them more readable via symbolication
  * Open relevant project in Xcode
  * Click on Window > Devices and Simulators > View Device Logs
  * Drag the .crash file onto the log list
  * The readable crash log should appear in the list

### idevicecheck
* Print device information
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")

### ireboot
* Reboot device

### isimulator
* `isimulator <option>` Handle various simulator related activites
  * `start` - choose and launch installed simulator
  * `paste <text>` - insert text into pasteboard
  * `url <url>` - open link in web browser or corresponding application
  * `wipe` - wipe all simulator data
