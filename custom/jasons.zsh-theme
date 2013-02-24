autoload -U colors && colors

autoload -Uz vcs_info

zstyle ':vcs_info:*' stagedstr '%F{green}●'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}●'
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%F{green}%b%F{magenta}:%F{green}%r'
zstyle ':vcs_info:(git):*' branchformat '%F{green}%b'
zstyle ':vcs_info:*' actionformats '%F{magenta}:%F{green}%a'
zstyle ':vcs_info:*' enable git svn
theme_precmd () {
    if [[ -z $(git ls-files --other --exclude-standard 2> /dev/null) ]] {
        zstyle ':vcs_info:*' formats '[%F{green}%b%a%c%u%F{magenta}]'
    } else {
        zstyle ':vcs_info:*' formats '[%F{green}%b%a%c%u%F{red}●%F{magenta}]'
    }

    vcs_info
}

setopt prompt_subst
# default prompt
PROMPT='%F{magenta}(%F{yellow}%~%F{magenta})${vcs_info_msg_0_}%{$reset_color%}%# '
# prompt for right side of screen
RPROMPT="%F{magenta}[%F{yellow}%D{%R %m/%d/%Y}%F{magenta}]%{$reset_color%}"

autoload -U add-zsh-hook
add-zsh-hook precmd theme_precmd
