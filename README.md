# wdmconf
My WDM configuration

## install

$ sudo apt-get install build-essential suckless-tools
$ sudo apt-get install libxft-dev

Download sources:
$ git clone https://anonscm.debian.org/git/collab-maint/dwm.git
$ cd dwm

create config file:
$ cp config.def.h config.h

configure dwm, see http://dwm.suckless.org/customisation :
$ vim config.h

installing:
$ sudo make clean install

