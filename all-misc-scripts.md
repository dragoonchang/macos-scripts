
sort the icons in Launchpad alphabetically
```
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```

show the hidden files
```
defaults write com.apple.finder AppleShowAllFiles YES
```

The system will store a copy of mem-ory memory
ory to persistent storage (the disk), and will remove power to memory. The system will restore from
disk image. If you want "hibernation" - slower sleeps, slower wakes, and better battery life, you
should use this setting.

```
sudo pmset -b hibernatemode 25
```


那麼要如何改善 MacBook 在睡眠時過度耗電的問題呢？只要把這兩者的延遲時間調低就能看到效果，設定方式很簡單，透過以下三行指令：
當你在終端機輸入指令後，就能將睡眠時間縮短為 300 秒（五分鐘），然後將系統儲存到 SSD 硬碟，如此一來就不用繼續消耗電力。tcpkeepalive 則是將透過 TCP 喚醒系統的功能關閉。中間的參數 -b 是使用電池下的參數，-c 為外接電源下的參數設定，如有需要請自行修改指令。
```
sudo pmset -b autopoweroffdelay 300
sudo pmset -b standbydelay 300
sudo pmset -b tcpkeepalive 0
```

