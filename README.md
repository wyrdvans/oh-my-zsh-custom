My Custom oh-my-zsh setup
=========================

This repo contains some aliases and a custom theme to be used with
[oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

To Use:
-------

 - Install and setup oh-my-zsh.
 - Set the ZSH_CUSTOM variable in your `.zshrc` to the location of the `custom`
 directory in this repo.
 - Set the ZSH_THEME variable in your `.zshrc` to the first part of the theme file
 name. For example, use `jasons` to use the `jasons.zsh-theme` file.

The `jasons.zsh-theme` Theme
----------------------------

This theme file uses the vcs_info zsh module to gather version control
information of the current directory and represent it in the prompt. The style is
similar to the kolo built in theme. See an example here: https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
