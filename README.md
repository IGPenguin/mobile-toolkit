![Header](/media/header_v2.png?raw=true)
## What is this?
🛠 Capture screen, manage apps, simulate input, print system log and more using simple commands!<br>

⚡️ Boost your effectivity while developing and/or testing mobile applications, discover new tools!<br>


## All features

📲 **Control Android and iOS devices** or Emulators/Simulators using terminal commands<br>

🛠 **Take screeshots, change device settings**, gather app & device information<br>

⚙️ **Manage mobile applications** - install, restart, wipe data and much more<br>

📋 **Handle multiple devices effortlessly** - select from list or target all connected devices<br>

⏳ **Save your precious time** - stop doing repetitive tasks manually<br>

🔄 **Automatic update** - get new features and fixes ASAP<br>

## Feedback & contribution

⁉️ [Submit issue](https://github.com/IntergalacticPenguin/mobile-toolkit/issues/new/choose) to report bugs, bring inspiration or simply ask questions<br>

🤝 [Pull request contribution](https://github.com/IntergalacticPenguin/mobile-toolkit/blob/master/.github/CONTRIBUTING.md "contribution rules") **is highly appreciated, see** [Collossal Challenges](https://github.com/IntergalacticPenguin/mobile-toolkit/projects/3)<br>

⭐️ Love Mobile Toolkit? -> Hit the star button and bring me joy!<br>

🔗 Connect with me on [LinkedIn](https://www.linkedin.com/in/intergalacticpenguin/) if you want :)

# 💻 Installation
<details>
	  <summary>Click to reveal step by step guide</summary>

_Note: This repository is mainly focused on macOS compatibility, but majority of interactions should work on any Unix system._
<br>
1. **Open terminal**
2. **Clone this repository** `git clone https://github.com/IntergalacticPenguin/mobile-toolkit.git`
3. **Setup Android tools**
	* **[Download](https://developer.android.com/studio/ "Android Studio") and install Android Studio** or **Android command line tools**
	* **Edit .bash_profile** (or .zshrc if you have zsh shell) `open -e ~/.bash_profile` or `open -e ~/.zshrc`
	  * **Add this line the end** `PATH=$PATH:/Users/dummyuser/Library/Android/sdk/platform-tools export PATH`
	  * **Don't forget to replace "dummyuser" with your account username**
	  * **Use full path to the "platform-tools" directory**
	* **[Allow USB debugging](https://developer.android.com/studio/debug/dev-options) on your device, connect it and authorize your computer** (click OK on the device screen)
4. **Setup iOS tools**
	* **Install latest Xcode and iOS command line tools** using [App Store](https://apps.apple.com/cz/app/xcode/id497799835?mt=12)
	* **Install [Homebrew](https://brew.sh/ "Homberew") package manager**
	* **Run Xcode, connect iOS device to USB and authorize your computer** (click "Trust" on the device screen)
	* **Run any script i.e. `iscreenshot`, installation of all required tools will be initiated automatically ([jq](https://stedolan.github.io/jq/) and [go-ios](https://github.com/danielpaulus/go-ios "go-ios"))
5. (Optional) **Use Mobile Toolkit in any directory in terminal**
	* **Edit .bash_profile** (or .zshrc if you have zsh shell) `open -e ~/.bash_profile` or `open -e ~/.zshrc`
	  * **Insert these lines at the end** <br> `PATH=$PATH:/Users/dummyuser/mobile-toolkit/android` <br>
	`PATH=$PATH:/Users/dummyuser/mobile-toolkit/ios`
	  * **Don't forget to replace "dummyuser" with your account username**
	  * **Use full path to the "mobile-toolkit" directory** (where you cloned this repository)
	  * **Move** `export PATH` **to the end of the file**

</details>

# 🤖 Android commands

## Capture screen

### 📸 ascreenshot
* `ascreenshot` Save screenshot to ~/Desktop
* `ascreenshot -a` Take screenshot on all connected devices

### 🎥 arecord
1. `arecord` Record screen
2. End recording using `ctrl + c`
3. Save screen video footage to ~/Desktop
  * `arecord <custom-name>` Specify your own filename by passing it as argument

## Control device

### ✏️ apaste
`apaste "john.doe@fakemail.com" password1 "5005 1002 3332 1112" "2/19" 5004`

* `apaste <text>` Insert text into currently focused field
* `apaste "john.doe@fakemail.com" password1 ` Every additional argument will be inserted into subsequent field
* `apaste "This is sample multi-word text."` use "" to insert multi-word text into one field
* `apaste -l` Insert "Lorem Ipsum paragraph"
* `apaste -a <input-text>` Insert any text input (options displayed above) on all connected devices
* `apaste -a -l` Insert "Lorem Ipsum paragraph" on all connected devices

### 🌐 aurl
* `aurl "google.com"` Open link in web browser or corresponding application
* `aurl -a "google.com"` Open link in web browser or corresponding application on all connected devices

### 🏴 adarkmode
* `adarkmode` Toggle system dark mode

### 🔊 atalkback
* `atalkback` Toggle TalkBack screen reader accessiblity option

### 📐 abounds
* `abounds` Toggle UI layout bounds
* App restart may be necessary on lower APIs

### 🚗 aanimationspeed
* `aanimationspeed` set slower animation speed or restore default
* `aanimationspeed <speed>` set animation speed multiplier

### 🔠 afontscale
* `afontscale` set large font scale (1.3x bigger than default) or restore default
* `afontscale <scale>` set font scale multiplier

### 🎹 acontrol
* `acontrol` start [scrcpy](https://github.com/Genymobile/scrcpy "scrcpy") session
* Provides realtime device screen mirroring and keyboard+mouse control

### 📷 acamera
* Start the default camera application

### ⚡️ awireless
* Enable or disable wireless ADB connection
* Use ADB and toolkit without having USB cable attached

## Manage packages

### 🚀 alaunch
* `alaunch` List third-party apps and choose one to run it
* `alaunch -s` List all available apps (including os pre-installed) and choose one to run it
* `alaunch com.dummy.package.name.app` Run app by package name

### 🕵️ aappinfo
* `aappinfo` List foreground app information
	* Package name
	* Version
	* Last update
	* minSdk and targetSdk
	* Permissions
* (Optional) Open application settings
* `aappinfo com.dummy.package.name.app` Target specific app by passing package name as argument

### 🔪 akill
* `akill` Restart the foreground app
* `akill com.dummy.package.name.app` Target specific app by passing package name as argument

### 🧽 aerase
* `aerase` Delete all local data of the foreground app and restart it
* `aerase com.dummy.package.name.app` Target specific app by passing package name as argument

### 🚚 ainstall
* `ainstall some-app-file.apk` Install and run .apk
* `ainstall -a some-app-file.apk` Install and run .apk on all connected devices

### 🗑 auninstall
* `auninstall` Uninstall third-party app, choose from the list
* `auninstall com.dummy.package.name.app` pass package name as argument
* `auninstall -w` Uninstall all-third party packages
	* Skips some essential apps, edit IGNORED_PACKAGES in this script to customize the list to your needs

### 🔥 awipe
* Wipe internal storage and delete all third-party apps

### 🐁 apermissionreset
* Revoke ALL GRANTED runtime permissions for ALL apps
	* You'll have to handle permission requests upon opening almost any app

### 🛍 agoogleplay
* `agoogleplay "Dummy App"` Search for "Dummy App" on Google Play
* `agoogleplay` Search for currently foreground app on Google Play

### 🏭 abuildproject
* `abuildproject` Build, install and run Android project located in current directory
* `abuildproject <relative-path>` Build, install and run Android project located in \<relative-path>

## Manage device

### ⚙️ aoptions
* `aoptions` Open system settings on a specific activity
* You can choose from quick presets
	* Developer settings
	* Locale settings
	* Date & time
	* Wifi settings
	* Storage management
	* Power usage
	* Root settings activity
* `aoptions A` Choose from exhaustive list of all available options
* `aoptions 1,2,3... | dev | locale | date | wifi | storage | power` Use a preset, choose one

### 📜 alog
* `alog` Print system log output
* `alog -f <package-name>` Filter log by package name

### 📋 acheckdevice
* Print genereal device information
* Perform basic safety-checks and toggle "testing firendly" settings
  * 10 minutes screen timeout
  * Highest brightness
  * Automatic date
  * Disabled notification sounds
  * Internet connectivity and WIFI name
  * Font scale
  * enUS locale
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")

### 😎 aservices
* Print running background services
* Search for more information via Google

### ♻ areboot
* Reboot the device

### 📱 aemulator
**Required**: Make terminal use Android Studio Java
  * **Edit .bash_profile** (or .zshrc if you have zsh shell) `open -e ~/.bash_profile` or `open -e ~/.zshrc`
  * **Add the following line at the end of the file** `export JAVA_HOME='/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home'`

* Android emulator supports all listed scripts by default + extra actions listed below
* `aemulator <option>` Handle various Android emulator activites
  * `start` - choose and launch installed emulator
  * `gprs | edge | 3g` - simulate network latency, choose one
  * `call <number>` - receive fake call
  * `sms <number> <text>` - receive fake sms
  * `gps <lat> <long>` - set manual GPS location
  * `battery <0-100>` - set battery level
  * `telnet <command>` - call command via telnet
	   * example commands `event | redir | sensor | physics | finger | rotate | fold | unfold...` see [Android emulator documentation](https://developer.android.com/studio/run/emulator-console#console-session) for more information

### 🐒 atestmonkey
* `atestmonkey` Default test with random seed and 15000 input events
* `atestmonkey <event-count>` Test with random seed and custom input event count
* `atestmonkey <event-count> <seed>` Test with custom seed and custom event count
* Perform automated stress test using [Application Excersciser Monkey](https://developer.android.com/studio/test/monkey)
* You can end test prematurely using ctrl^c or `atestmonkeykill` in case something goes wrong
* App under test needs to be pinned to fullscreen mode to prevent unwanted interactions elsewhere
* Screen pinning button location is directly tied to OS version and device manufacturer skin.
	* It may be tricky to turn on, see examples below:<br><br>
	* <details>
			<summary>Google Nexus 5 (Android 6)</summary>
			<br><em>You need to bring the app window to foreground, the button is located in bottom right corner.</em><br><br>
			<img src="/media/Pinning_Nexus_v3.png" width="420"></details>
	* <details>
			<summary>Google Pixel 3 (Android 11)</summary>
			<br><em>You need to click on the app icon, the button is located in popup menu.</em><br><br>
			<img src="/media/Pinning_Pixel.png" width="420"></details>

# 🍎 iOS commands

## Capture screen

### 📸 iscreenshot
* `iscreenshot` Save screenshot to ~/Desktop
* `iscreenshot -a` Take screenshot on all connected devices

### 🎥 irecord
**Required**: Install [videosnap](https://github.com/matthutchinson/videosnap/releases "videosnap") -> download and install `videosnap-0.0.7.pkg`
**Required**: Install [ffmpeg](https://www.ffmpeg.org/ "ffmpeg") `brew install ffmpeg`

1. `irecord` Record screen
2. End recording using `ctrl + c`
3. Video footage is saved to ~/Desktop
4. File is compressed using ffmpeg

### 📹 iquicktime
* Run QuickTime and open video source picker (so you can choose a device right away)
  * You may have to allow security system permission, so the script can access QuickTime application
* This is a fallback script for `irecord` on M1 macs as it is currently not working

## Manage applications
### 🚚 iinstall
* `iinstall some-app-file.ipa` Install .ipa (make sure to use properly signed build)
* `iinstall -a some-app-file.ipa` Install .ipa to all connected devices

### 🗑 iuninstall
* `iuninstall` Uninstall third-party app, choose from the list
* `iuninstall com.dummy.package.name.app` pass bundle name as argument
* `iuninstall -w` Uninstall all third-party packages
  * Skips some essential apps, edit IGNORED_PACKAGES in this script to customize the list to your needs

### 🚀 ilaunch
	* `ilaunch` List third-party apps and choose one to run it
	* `ilaunch -s` List os pre-installed apps and choose one to run it
	* `ilaunch com.dummy.bundle.id.app` Run app by bundle id

### 🔪 ikill
	* `ikill` List third-party apps and choose one to restart
	* `ikill -s` List os pre-installed apps and choose one to restart
	* `ikill com.dummy.bundle.id.app` Target specific app by passing bundle id as argument

## Manage device

### ⚙️ ioptions
* `ioptions` Open system settings application

### 💬 ilang
* `ilang <lang>` Change the device language to different one, according to ISO-639 (i.e. "cs")
* `ilang` Change the device language to different one, choose from a list of all supported

### 📜 ilog
* `ilog` Print system log output

### 📋 icheckdevice
* Print device information
* (Optional) Search for the device on [GSMArena](https://www.gsmarena.com/ "GSMArena")

### ♻ ireboot
* Reboot the device

### 📱 isimulator
* Simulator has limited functionality (no camera, biometrics, Appstore...), but **offers some extra options, unavailable on physical iOS devices**
* `isimulator <option>` Handle various simulator related activites
  * `start` - choose and launch installed simulator
  * `screenshot` - save screenshot to ~/Desktop
  * `record` - save screen recording to ~/Desktop (full resolution and frame rate, without QuickTime hassle)
  * `paste <text>` - insert text into pasteboard
  * `import <file>` - import image or video to simulator gallery app
  * `log` - print simulator log
  * `url <url>` - open link in web browser or corresponding application
  * `wipe` - wipe all simulator data
  * `battery <0-100>` - set battery level displayed in status bar (no functional impact)
  * `time <hh:mm>` - set time displayed in status bar (no functional impact)

### 🖥 iconsole
* `iconsole` Examine iOS or macOS system logs using Console application

# 💭 About
**You can read about my motivation in this** [blog post](https://blog.thefuntasty.com/mobile-application-qa-capturing-the-evidence-a5115b0f2a4 "Mobile Application QA - Capturing the evidence"). If you made it this far in `README.md` and you like my work, please **star this repository**. Every appreciation empowers my motivation.
