alias ls='ls --color=auto'
alias l='ls -Alh --color=auto --group-directories-first'
alias p='sudo pacman'
alias p?='sudo pacman -Qe | grep'
alias py='python'
alias v='nvim'
alias r='ranger'
# alias r='. ranger'
alias rm='rm -rfi'
# alias vf='vifm'
alias si3='v ~/.config/i3/i3.config'
# alias si3b='v ~/.config/i3blocks/config'
# alias ste='v ~/.config/termite/config'
alias sb='v ~/.bashrc'
alias sba='v ~/.bash_aliases'
alias sbt='bluetoothctl'
alias spi='v ~/.config/picom/picom.conf'
alias sv='v ~/.config/nvim/init.vim'
alias sp='v ~/.config/polybar/config'
alias sr='v ~/.config/ranger/rc.conf'
# alias svf='v ~/.config/vifm/vifmrc'
alias g='git'
alias pm="pulsemixer"
alias maxbox='ssh seed@176.31.182.89'
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias gj='cd /var/git/journal'
alias red='redshift -P -O'

# FUNCTIONS

gitpush() {
    git add .
    git commit -am "$1"
    git push
}
confpush() {
    config commit -am "$1"
    config push
}
sec2min() { printf "%d:%02d\n" "$((10#$1 / 60))" "$((10#$1 % 60))"; }

# Fuzzy

fe() {
  local files
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}
