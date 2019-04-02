
We can use this script to rebuild a brand new Macbook into a powerful workstation.

Because of desperated PHP source, we need to refine this script. 

```
#!/bin/sh

#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap atlassian/tap
brew tap cliutils/apple
brew tap ethereum/ethereum
brew tap homebrew/cask
brew tap homebrew/cask-drivers
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/core
brew tap homebrew/dupes
brew tap homebrew/php
brew tap homebrew/python
brew tap homebrew/science
brew tap homebrew/services
brew tap homebrew/versions

brew install ant
brew install autoconf
brew install automake
brew install bash
brew install boost
brew install clang-format
brew install cmake
brew install cocoapods
brew install curl
brew install dash
brew install dropbox-uploader
brew install ecj
brew install eigen
brew install freetype
brew install gcc
brew install gdbm
brew install gearman
brew install geoip
brew install geos
brew install gettext
brew install git git-flow git-lfs
brew install glib
brew install gmp
brew install go
brew install guetzli
brew install htmlcompressor
brew install htop
brew install icu4c
brew install igbinary
brew install ilmbase
brew install imagemagick
brew install isl
brew install joe
brew install jpeg
brew install libevent
brew install libffi
brew install libmemcached
brew install libmpc
brew install libpng
brew install libssh2
brew install libtensorflow
brew install libtiff
brew install libtool
brew install libxml2
brew install mcrypt
brew install memcached
brew install mhash
brew install midnight-commander
brew install mpfr
brew install nginx
brew install node
brew install ntp
brew install numpy
brew install openexr
brew install openssl
brew install openssl@1.1
brew install ossp-uuid
brew install p7zip
brew install pcre
brew install percano-server
brew install percano-server-mongodb
brew install pkg-config
brew install popt
brew install python3
brew install qt
brew install qt5
brew install rabbitmq-c
brew install readline
brew install redis
brew install s-lang
brew install screen
brew install sqlite
brew install sshpass
brew install tbb
brew install tmux
brew install tree
brew install uncrustify
brew install unixodbc
brew install v8
brew install webp
brew install wget
brew install xz
brew reinstall imagemagick --with-webp --with-fontconfig

brew cask install adobe-reader
brew cask install anaconda
brew cask install appcode
brew cask install colorpicker colorpicker-antetype colorpicker-developer colorpicker-hex colorpicker-propicker colorpicker-rcwebcolorpicker colorpicker-skalacolor
brew cask install carbon-copy-cloner
brew cask install cocoapods-app
brew cask install facebook-ios-sdk
brew cask install filezilla
brew cask install firefox
brew cask install google-chrome
brew cask install google-drive
brew cask install google-earth
brew cask install google-web-designer
brew cask install intel-power-gadget
brew cask install intellij-idea
brew cask install ios-app-signer
brew cask install iterm2
brew cask install java
brew cask install karabiner
brew cask install kext-utility
brew cask install kextviewr
brew cask install kindle
brew cask install mindjet-mindmanager
brew cask install nvidia-web-driver
brew cask install opera
#brew cask install plex-media-player
#brew cask install plex-media-server
brew cask install postman
brew cask install quicklook-csv quicklook-json  quicklook-pat quicklook-pfm
brew cask install react-native-debugger
brew cask install realm-browser
brew cask install safari-tab-switching
brew cask install skype
brew cask install sourcetree
brew cask install spotify
brew cask install sublime-text
brew cask install uncrustifyx
brew cask install visual-studio
brew cask install visual-studio-code
brew cask install xtrafinder
brew cask install zeplin

#brew unlink php70
#brew unlink php71
#brew unlink php72
#brew reinstall --build-from-source php54
#brew link php54
#brew reinstall --build-from-source php54-amqp php54-gearman php54-geoip \
#php54-igbinary php54-imagick php54-intl php54-mcrypt php54-mongodb \
#php56-oauth php54-opcache php54-pcntl php54-pthreads php54-redis \
#php54-scrypt php54-ssh2 php54-uuid php54-v8js php54-xdebug

#brew unlink php70
#brew unlink php71
#brew unlink php72
#brew reinstall --build-from-source php56
#brew link php56
#brew reinstall --build-from-source php56-amqp php56-gearman php56-geoip \
#php56-igbinary php56-imagick php56-intl php56-mcrypt php56-mongodb \
#php56-oauth php56-opcache php56-pcntl php56-pthreads php56-redis \
#php56-scrypt php56-ssh2 php56-uuid php56-v8js php56-xdebug

brew unlink php70
brew unlink php71
brew unlink php72
brew reinstall --build-from-source php70
brew link --overwrite php70
brew reinstall --build-from-source php70-amqp php70-gearman php70-geoip \
php70-igbinary php70-imagick php70-intl php70-libsodium php70-mailparse php70-mcrypt php70-mongodb \
php70-oauth php70-opcache php70-pcntl php70-phalcon php70-pthreads php70-redis \
php70-scrypt php70-ssh2 php70-swoole php70-timezonedb php70-uuid php70-v8js php70-xdebug php70-stats php70-propro php70-raphf php70-http php70-yaml

brew unlink php70
brew unlink php71
brew unlink php72
brew reinstall --build-from-source php71
brew link --overwrite php71
brew reinstall --build-from-source php71-amqp php71-gearman php71-geoip \
php71-igbinary php71-imagick php71-intl php71-libsodium php71-mailparse php71-mcrypt php71-mongodb \
php71-oauth php71-opcache php71-pcntl php71-phalcon php71-redis \
php71-ssh2 php71-swoole php71-timezonedb php71-uuid php71-v8js php71-xdebug php71-stats php71-propro php71-raphf php71-http

brew unlink php70
brew unlink php71
brew unlink php72
brew reinstall --build-from-source php72
brew link --overwrite php72
brew reinstall --build-from-source php72-amqp php72-gearman php72-geoip \
php72-igbinary php72-imagick php72-intl php72-mailparse php72-mongodb \
php72-oauth php72-opcache php72-pcntl php72-phalcon php72-redis \
php72-ssh2 php72-swoole php72-timezonedb php72-v8js php72-stats php72-propro php72-raphf php72-http
#brew reinstall --build-from-source php72-libsodium php72-mcrypt php72-uuid php72-xdebug

brew unlink php70
brew unlink php71
brew unlink php72
brew link --overwrite php71
ln -s /usr/local/opt/php70/sbin/php70-fpm /usr/local/sbin/php70-fpm
ln -s /usr/local/opt/php72/sbin/php72-fpm /usr/local/sbin/php72-fpm
sudo npm.sh restart


brew install brew-php-switcher
brew install composer
brew install codeception
brew install phpmd
brew install php-code-sniffer
brew install php-version
brew install phpdocumentor
brew install phpunit

# AI & GPU
brew install coreutils
brew install swig
brew install bazel
brew cask install caskroom/drivers/cuda

# PHP upgrade few
brew unlink php70
brew unlink php71
brew unlink php72
brew link php70
brew reinstall --build-from-source php70-imagick php70-libsodium php70-redis

brew unlink php70
brew unlink php71
brew unlink php72
brew link php71
brew reinstall --build-from-source php71-imagick php71-libsodium php71-redis

brew unlink php70
brew unlink php71
brew unlink php72
brew link php72
brew reinstall --build-from-source php72-imagick php72-libsodium php72-redis

brew unlink php70
brew unlink php71
brew unlink php72
brew link php71
rm /usr/local/sbin/php70-fpm
rm /usr/local/sbin/php72-fpm
ln -s /usr/local/opt/php70/sbin/php70-fpm /usr/local/sbin/php70-fpm
ln -s /usr/local/opt/php72/sbin/php72-fpm /usr/local/sbin/php72-fpm
sudo npm.sh restart

#brew uninstall --force --ignore-dependencies php54-amqp php54-gearman php54-geoip \
#php54-igbinary php54-imagick php54-intl php54-mcrypt php54-mongodb php56-oauth \
#php54-opcache php54-pcntl php54-pthreads php54-redis php54-ssh2 php54-uuid php54-v8js \
#php54-xdebug php54-igbinary php54-mongodb  php54-redis  php54-swoole  php54-timezonedb \
#php54 php54-igbinary php54-imagick php54-mongodb

#brew uninstall --force --ignore-dependencies php56 php56-amqp php56-gearman php56-geoip \
#php56-igbinary php56-imagick php56-intl php56-mcrypt php56-mongodb \
#php56-oauth php56-opcache php56-pcntl php56-pthreads php56-redis \
#php56-scrypt php56-ssh2 php56-uuid php56-v8js php56-xdebug php56-swoole \
#php56-timezonedb
```
