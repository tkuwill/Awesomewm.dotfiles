# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b %m%u%c'
 
# Set up the prompt (with git branch name)



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
RPROMPT='%S%F{225}[%?]%f%S%F{15}%*%f|RAM$(mem)/7.7Gi%S%F{38}$(battery)%%s%f%S%F{154}$(battime)%s%f'
PROMPT='%F{38} %f%F{231}%n@%f%F{38}%m%f  %F{14}in %~ ${vcs_info_msg_0_} %f
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

export LESS_TERMCAP_mb=$'\E[01;4m'       # begin blinking
export LESS_TERMCAP_md=$'\E[01;38;5;74m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'           # end mode
export LESS_TERMCAP_se=$'\E[0m'           # end standout-mode
export LESS_TERMCAP_so=$'\E[38;5;246m'    # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'           # end underline
export LESS_TERMCAP_us=$'\E[04;38;5;76m' # begin underline
export MANPAGER="/bin/sh -c \"col -b | vim --noplugin -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
