# setopt prompt_subst
autoload -U colors && colors

# Define prompt.
function set_prompt() {
    local name=""
    local host=""

    PROMPT="%{$fg[magenta]%}(%(!.%{$fg[red]%}.%{$fg[cyan]%})%n%{$fg[cyan]%}@%m%{$reset_color%}: %{$fg[yellow]%}%~%{$fg[magenta]%})%{$reset_color%}%# " # default prompt
    RPROMPT="%{$fg[magenta]%}[%{$fg[yellow]%}%D{%R %m/%d/%Y}%{$fg[magenta]%}]%{$reset_color%}" # prompt for right side of screen
}

set_prompt
