#   ______      _ _      _____     _    _                                               _____      
#  |  ____|    (_) |    |  __ \   | |  | |                                             / ____|     
#  | |__   _ __ _| | __ | |  | |  | |__| | ___ _ __ _ __ _ __ ___   __ _ _ __  _ __   | (___  _ __ 
#  |  __| | '__| | |/ / | |  | |  |  __  |/ _ \ '__| '__| '_ ` _ \ / _` | '_ \| '_ \   \___ \| '__|
#  | |____| |  | |   <  | |__| |  | |  | |  __/ |  | |  | | | | | | (_| | | | | | | |  ____) | |_  
#  |______|_|  |_|_|\_\ |_____(_) |_|  |_|\___|_|  |_|  |_| |_| |_|\__,_|_| |_|_| |_| |_____/|_(_) 

#  Zsh configuration file, updated 05/17/2021
                                                                                                 
# ~/.zshrc

# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load --- if set to "random", it will
ZSH_THEME="amuse"

# Set list of themes to pick from when loading at random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

ENABLE_CORRECTION="true"

HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux jump)

source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

setopt GLOB_DOTS

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

# PS1='[\u@\h \W]\$ '

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# Readable output
alias df='df -h'

# Pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

# Free
alias free="free -mt"

# Use all cores
alias uac="sh ~/.bin/main/000*"

# Continue download
alias wget="wget -c"

# Userlist
alias userlist="cut -d: -f1 /etc/passwd"

# Merge new settings
alias merge="xrdb -merge ~/.Xresources"

# Aliases for software managment
# Pacman or pm
alias pacman='sudo pacman --color auto'
alias update='sudo pacman -Syyu'

# Yay as aur helper - updates everything
alias pksyua="yay -Syu --noconfirm"
alias upall="yay -Syu --noconfirm"

# Ps
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

# Grub update
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Add new fonts
alias update-fc='sudo fc-cache -fv'

# Copy/paste all content of /etc/skel over to home folder - backup of config created - beware
alias skel='cp -Rf ~/.config ~/.config-backup-$(date +%Y.%m.%d-%H.%M.%S) && cp -rf /etc/skel/* ~'
# Backup contents of /etc/skel to hidden backup folder in home/user
alias bupskel='cp -Rf /etc/skel ~/.skel-backup-$(date +%Y.%m.%d-%H.%M.%S)'

# Copy bashrc-latest over on bashrc - cb= copy bashrc
# Alias cb='sudo cp /etc/skel/.bashrc ~/.bashrc && source ~/.bashrc'
# Copy /etc/skel/.zshrc over on ~/.zshrc - cb= copy zshrc
alias cz='sudo cp /etc/skel/.zshrc ~/.zshrc && source ~/.zshrc'

# Switch between bash and zsh
alias tobash="sudo chsh $USER -s /bin/bash && echo 'Now log out.'"
alias tozsh="sudo chsh $USER -s /bin/zsh && echo 'Now log out.'"

# Quickly kill conkies
alias kc='killall conky'

# Hardware info --short
alias hw="hwinfo --short"

# Skip integrity check
alias yayskip='yay -S --mflags --skipinteg'
alias trizenskip='trizen -S --skipinteg'

# Check vulnerabilities microcode
alias microcode='grep . /sys/devices/system/cpu/vulnerabilities/*'

# Get fastest mirrors in your neighborhood
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Mounting the folder Public for exchange between host and guest on virtualbox
alias vbm="sudo /usr/local/bin/arcolinux-vbox-share"

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Nano for important configration files
# Know what you do in these files
alias nlightdm="sudo nano /etc/lightdm/lightdm.conf"
alias npacman="sudo nano /etc/pacman.conf"
alias ngrub="sudo nano /etc/default/grub"
alias nmkinitcpio="sudo nano /etc/mkinitcpio.conf"
alias nslim="sudo nano /etc/slim.conf"
alias noblogout="sudo nano /etc/oblogout.conf"
alias nmirrorlist="sudo nano /etc/pacman.d/mirrorlist"
alias nconfgrub="sudo nano /boot/grub/grub.cfg"

# Gpg
# Verify signature for isos
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
# Receive the key of a developer
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# Maintenance
alias big="expac -H M '%m\t%n' | sort -h | nl"
alias downgrada="downgrade --ala-url 'https://bike.seedhost.eu/arcolinux/'"

# Systeminfo
alias probe="sudo -E hw-probe -all -upload"

# Basic anto/tab completion
autoload -U compinit
zstyle ':completion::' menu select

# Use vim keys in tab complete menu
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'left' vi-backward-char
bindkey -M menuselect 'down' vi-down-line-or-history
bindkey -M menuselect 'up' vi-up-line-or-history
bindkey -M menuselect 'right' vi-forward-char

# Fix backspace bug when switching modes
bindkey "^?" backward-delete-char

# Ex = EXtractor for all kinds of archives
# Usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# Colorize man pages
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[1;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# Loads personal aliases from seperate file
[[ -f ~/.zsh_aliases ]] && . ~/.zsh_aliases

bindkey -v
neofetch

