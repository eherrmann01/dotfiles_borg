#!/bin/sh
# Disable expandtab (:set expandtab!) before editing this file!!

cat <<EOF | xmenu | sh &
Web
	Brave	brave
	Chrome	chromium
	Firefox	firefox
	Mail	thunderbird

Imaging 
	Blender			blender 
	Darktable		darktable	
	Gimp			gimp
	Inkscape		inkscape
Audio / Video
	Audacity		env UBUNTU_MENUPROXY=0 audacity
	Ardour			ardour6
	KdenLive		kdenlive
	OBS-Studio		obs
	Reaper			"/home/erik/.bin/reaper_linux_x86_64/REAPER/reaper" %F
	Spotify			spotify
	VLC				vlc

Apps
	Calculator		galculator
	File Compare	meld
	Unit converter	convertall
	Virtual Box		VirtualBox

Office
	Libre Office Base	libreoffice --base
	Libre Office Calc	libreoffice --calc ~/Documents/healthcare/bp_tracking.ods
	Libre Office Impress	libreoffice --impress
	Libre Office Math	libreoffice --math
	Libre Office Write	libreoffice --writer

Dev Tools / Editors
	Geany			geany
	Vim				termite -e vim
	VSCodium		codium

File Managers
	Dolphin			dolphin
	Pcmanfm			pcmanfm
	Ranger			termite -e /usr/local/bin/ranger
	Spacefm			spacefm
	Thunar			thunar
	Vifm			termite -e vifm

System Tools
	Barrier			barrier
	Bashtop			termite -e bashtop
	File Search		catfish
	Gparted			gparted
	HTOP			termite -e htop
	ISO writer		/opt/balenaEtcher/balena-etcher-electron %U
	Timeshift		timeshift-launcher
	Tweaks			arcolinux-tweak-tool
	Nitrogen		nitrogen

Edit Config Files
	Bashrc			exec termite -e ~/bin/run_scripts/barc
	I3				exec termite -e ~/bin/run_scripts/i3rc
	Picom			exec termite -e ~/bin/run_scripts/picomrc
	Polybar			exec termite -e ~/bin/run_scripts/pbrc
	Termite			exec termite -e ~/bin/run_scripts/termrc
	Vifmrc			exec termite -e ~/bin/run_scripts/vifmrc
	Vimrc			exec termite -e ~/bin/run_scripts/virc
	Xfce			exec termite -e ~/bin/run_scripts/xfcerc
	Xmenu			exec termite -e ~/bin/run_scripts/xmenurc

Terminal (Termite)	termite	
Terminal (Xfce) 	xfce4-terminal
Terminal (Urxvt)	urxvt

Shutdown		poweroff
Reboot			reboot
EOF
