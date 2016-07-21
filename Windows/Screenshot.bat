adb shell screencap -p /mnt/sdcard/output.png
adb pull /mnt/sdcard/output.png C:\Users\eidam\Desktop\screenshot"%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%".png
adb shell rm /mnt/sdcard/output.png