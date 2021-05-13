#!/bin/sh
# Disable expandtab (:set expandtab!) before editing this file!!

cat <<EOF | xmenu | sh &
Apps
	Bitwarden		bitwarden
	Calculator		galculator
	KDE Connect		kdeconnect-sms
	Stellarium		stellarium
	Unit converter	convertall
	Virtual Box		VirtualBox

Audio / Video
	Audacity		audacity
	Kdenlive		kdenlive
	OBS Studio		obs
	PulseAudio		pulseaudio-equalizer-gtk  
	Reaper			reaper
	Spotify			spotify
	VLC				vlc

Dev Tools
	Geany			geany
	VSCodium		codium

Edit Config Files
	alacritty		exec alacritty -e ~/bin/run_scripts/alacrittyrc
	Bashrc			exec alacritty -e ~/bin/run_scripts/barc
	I3				exec alacritty -e ~/bin/run_scripts/i3rc
	Imwheel			exec alacritty -e ~/bin/run_scripts/imwheelrc
	Picom			exec alacritty -e ~/bin/run_scripts/picomrc
	Polybar			exec alacritty -e ~/bin/run_scripts/pbrc
	Qtile			exec alacritty -e ~/bin/run_scripts/qtilerc
	Termite			exec alacritty -e ~/bin/run_scripts/termrc
	Vifmrc			exec alacritty -e ~/bin/run_scripts/vifmrc
	Vimrc			exec alacritty -e ~/bin/run_scripts/virc
	Xfce			exec alacritty -e ~/bin/run_scripts/xfcerc
	Xmenu			exec alacritty -e ~/bin/run_scripts/xmenurc
	Zsh				exec alacritty -e ~/bin/run_scripts/zshrc

File Managers
	Dolphin			dolphin
	Pcmanfm			pcmanfm
	Ranger			alacritty -e ranger
	Spacefm			spacefm
	Thunar			thunar
	Vifm			exec alacritty -e vifm

Imaging 
	Blender			blender 
	Darktable		darktable	
	Gimp			gimp
	Inkscape		inkscape
	
Office
	Libre Office Base	libreoffice --base
	Libre Office Calc	libreoffice --calc ~/Documents/healthcare/bp_tracking.ods
	Libre Office Impress	libreoffice --impress
	Libre Office Math	libreoffice --math
	Libre Office Write	libreoffice --writer

System Tools
	Barrier			barrier
	Bashtop			exec alacritty -e bashtop
	File Search		catfish
	Gparted			gparted
	HTOP			alacritty -e htop
	ISO writer		/opt/balenaEtcher/balena-etcher-electron %U
	LXAppearance	lxappearance
	Timeshift		timeshift-launcher
	Tweaks			arcolinux-tweak-tool
	Nitrogen		nitrogen
	QT Theme Manager	qt5ct

Terminals
	alacritty
	termite	
	xfce4-terminal
	urxvt

Web / Email
	Brave	brave
	Chrome	chromium
	Discord	discord
	Firefox	firefox
	Mail	thunderbird
	Protonmil-Bridge	protonmail-bridge

Shutdown		poweroff
Reboot			reboot
EOF
