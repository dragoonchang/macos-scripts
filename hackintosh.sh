#!/bin/bash

# from https://www.tonymacx86.com/threads/imac-pro-x99-live-the-future-now-with-macos-10-14-mojave-successful-build-extended-guide.255117/

# should return 1
sysctl -n machdep.xcpm.mode

# should return 1
sysctl -n machdep.xcpm.vectors_loaded_count

# should be 
#110    1 0xffffff7f8237a000 0x19000    0x19000    com.apple.driver.X86PlatformPlugin (1.0.0) 1CE45A28-BB57-3DAB-B04C-944FFFD24A84 <109 64 21 14 12 8 7 6 5 3 1>
#148    1 0xffffff7f82393000 0x9000     0x9000     com.apple.driver.X86PlatformShim (1.0.0) DFCE4D20-08FB-30F5-A1C2-41EADC3497FE <110 109 14 8 5 3>
kextstat|grep -y x86plat

# should be empty
kextstat|grep -y appleintelcpu

# get AppleIntelInfo
cd /tmp
sudo rm -rf /tmp/AppleIntelInfo
git clone https://github.com/Piker-Alpha/AppleIntelInfo.git
cd /tmp/AppleIntelInfo
xcodebuild
cd build/Release
chmod -R 755 AppleIntelInfo.kext
sudo chown -R root:wheel AppleIntelInfo.kext
sudo kextload AppleIntelInfo.kext
sudo cat /tmp/AppleIntelInfo.dat
sudo kextunload AppleIntelInfo.kext
