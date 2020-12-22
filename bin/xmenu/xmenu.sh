#!/bin/sh
# Disable expandtab (:set expandtab!) before editing this file!!

cat <<EOF | xmenu | sh &
Web
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
	Reaper			"/home/erik/.bin/reaper_linux_x86_64/REAPER/reaper" %F
	Spotify			spotify
	VLC				vlc

Apps
	Calculator		galculator
	Unit converter	convertall
	Virtual Box		VirtualBox

Office
	Libre Office Base	libreoffice --base
	Libre Office Calc	libreoffice --calc 
	Libre Office Impress	libreoffice --impress
	Libre Office Math	libreoffice --math
	Libre Office Write	libreoffice --writer

Dev Tools
	Geany			geany
	VSCodium		codium
System Tools
	Barrier			barrier
	File Manager	dolphin
	File Search		catfish
	ISO writer		/opt/balenaEtcher/balena-etcher-electron %U
	Ranger			termite -e /usr/local/bin/ranger
	Timeshift		timeshift-launcher
	Tweaks			arcolinux-tweak-tool
	Nitrogen		nitrogen

Edit Config Files
	Bashrc			exec termite -e ~/bin/run_scripts/barc
	I3				exec termite -e ~/bin/run_scripts/i3rc
	Picom			exec termite -e ~/bin/run_scripts/picomrc
	Polybar			exec termite -e ~/bin/run_scripts/pbrc
	Termite			exec termite -e ~/bin/run_scripts/termrc
	Vimrc			exec termite -e ~/bin/run_scripts/virc
	Xfce			exec termite -e ~/bin/run_scripts/xfcerc
	Xmenu			exec termite -e ~/bin/run_scripts/xmenurc

Terminal (Termite)	termite	
Terminal (Xfce) 	xfce4-terminal

Shutdown		poweroff
Reboot			reboot
EOF
