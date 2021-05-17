#   ______      _ _      _____     _    _                                               _____      
#  |  ____|    (_) |    |  __ \   | |  | |                                             / ____|     
#  | |__   _ __ _| | __ | |  | |  | |__| | ___ _ __ _ __ _ __ ___   __ _ _ __  _ __   | (___  _ __ 
#  |  __| | '__| | |/ / | |  | |  |  __  |/ _ \ '__| '__| '_ ` _ \ / _` | '_ \| '_ \   \___ \| '__|
#  | |____| |  | |   <  | |__| |  | |  | |  __/ |  | |  | | | | | | (_| | | | | | | |  ____) | |_  
#  |______|_|  |_|_|\_\ |_____(_) |_|  |_|\___|_|  |_|  |_| |_| |_|\__,_|_| |_|_| |_| |_____/|_(_) 
                                                                                                  
# Bash aliases for erik-borg, updated 05/16/2021

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='../../..'
alias .4='../../../..'
alias .5='../../../../..' 

# List
alias dir='exa -al --color=always --group-directories-first | more'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -lah'
alias l='ls'
alias l.='ls -A | egrep '^\.' | more'

# Fix obvious typo's
alias cd..='cd ..'
alias pdw="pwd"
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'

# Colorize the grep command output for ease of use (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Update system
# alias update="pacman -Syu" 

# Change terminal editor to vim - EDH
export VISUAL=vim
export EDITOR=vim

# Process viewer
alias bt="bashtop"

# Vi for vim
alias vi="vim"

# Vf for vifm
alias vf="vifm"

# Clear the screen
alias cl="clear"

# Readable output
alias df="df -h"

# Safely copy files
alias cp="cp -i"

# Safely overwrite files
alias mv="mv -i"

# Safely delete files
alias rm="rm -i"

# Calculatr
alias calc="galculator"

# Redshift
alias night="redshift-gtk -l 30.47741:-90.96232 &"

# Config for git_dotfile_repo
alias gitb='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME' 

# Ranger
alias fm="ranger"

# Exit terminal
alias ':q'='exit'

# Set wacom tablet area
alias 'wacom'='xsetwacom --set "Wacom Intuos S Pen stylus" area 0 0 3040 2050'

# Set random wallpaper
alias 'paper'='wal -qei  ~/Pictures/wallpaper'

# Youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "

alias ytv-best="youtube-dl -f bestvideo+bestaudio "

# Recent Installed Packages
alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"

# Iso and version used to install ArcoLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

# Cleanup orphaned packages
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'



