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
	Audacity		env UBUNTU_MENUPROXY=0 audacity
	OBS Studio		obs
	Pulseaudio Mixer	pulseaudio-equalizer-gtk
	Reaper			"/home/erik/.bin/reaper_linux_x86_64/REAPER/reaper" %F
	Spotify			spotify
	VLC				vlc

Dev Tools
	Geany			geany
	VSCodium		codium

Edit Config Files
	Bashrc			exec termite -e ~/bin/run_scripts/barc
	I3				exec termite -e ~/bin/run_scripts/i3rc
	Imwheel			exec termite -e ~/bin/run_scripts/imwheelrc
	Picom			exec termite -e ~/bin/run_scripts/picomrc
	Polybar			exec termite -e ~/bin/run_scripts/pbrc
	Qtile			exec termite -e ~/bin/run_scripts/qtilerc
	Termite			exec termite -e ~/bin/run_scripts/termrc
	Vifmrc			exec termite -e ~/bin/run_scripts/vifmrc
	Vimrc			exec termite -e ~/bin/run_scripts/virc
	Xfce			exec termite -e ~/bin/run_scripts/xfcerc
	Xmenu			exec termite -e ~/bin/run_scripts/xmenurc
	Zshrc			exec termite -e ~/bin/run_scripts/zshrc

File Managers
	Dolphin			dolphin
	Pcmanfm			pcmanfm
	Ranger			termite -e ranger
	Spacefm			spacefm
	Thunar			thunar
	Vifm			termite -e vifm

Imaging 
	Blender			blender 
	Darktable		darktable	
	Gimp			gimp
	Inkscape		inkscape
	
Office
	Libre Office Base	libreoffice --base
	Libre Office Calc	libreoffice --calc ~/Documents/healthcare/bp_tracking.ods
	Libre Office Draw	libreoffice --draw 
	Libre Office Impress	libreoffice --impress
	Libre Office Math	libreoffice --math
	Libre Office Write	libreoffice --writer

System Tools
	Barrier			barrier
	Bashtop			termite -e bashtop
	File Search		catfish
	Gparted			gparted
	HTOP			termite -e htop
	ISO writer		/opt/balenaEtcher/balena-etcher-electron %U
	LXAppearacne	lxappearance
	Meld			meld
	Timeshift		timeshift-launcher
	Tweaks			arcolinux-tweak-tool
	Nitrogen		nitrogen
	Pulseaudio EQ	pulseaudio-equalizer-gtk
	QT Theme Manager	qt5ct

Terminals
	termite	
	xfce4-terminal
	urxvt

Web / Email
	Brave	brave
	Chrome	chromium
	Firefox	firefox
	Mail	thunderbird
	Protonmail-Bridge	protonmail-bridge

Shutdown		poweroff
Reboot			reboot
EOF
