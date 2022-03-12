function mem {
	free -h | grep 'Mem' | cut -c 28-32
}

function battime {
   acpi | grep 'Battery 0' | cut -c 27-49
}
function battery {
   upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep 'percentage' | cut  -c 25-28 
}
setopt promptsubst
RPROMPT='%S%F{15} %* %f|RAM $(mem)/7.7Gi%S%F{38}$(battery)%%s%f%S%F{154} $(battime)%s%f'
PROMPT='%F{38}   %f%F{231}%n@%f%F{38}%m%f  %F{14}in %~%f
%F{40} %#%f  '
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=99999
setopt beep nomatch
unsetopt autocd extendedglob notify
bindkey -e
bindkey "\e[3~" delete-char
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/will/.zshrc'
zstyle ':completion:*' menu yes select
autoload -Uz compinit
compinit
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting.git/zsh-syntax-highlighting.zsh
export LANGUAGE=en_US:en
export LANG="zh_TW.utf8"
# End of lines added by compinstall
alias lah="ls -lah --color=auto"
alias la="ls -la --color=auto"
alias ls -la="ls -la --color=auto"
alias ls="ls --color=auto"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#686868,bg=black,bold,underline"
export GTK_IM_MODULE=fcitx5
export XMODIFIERS=@im=fcitx5
export QT_IM_MODULE=fcitx5
