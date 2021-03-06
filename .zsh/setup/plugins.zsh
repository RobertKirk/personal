_rob_zplug_load_file=${ZLPUG_LOADFILE:-$HOME/.zplug/packages.zsh}
touch $_rob_zplug_load_file
eval $( dircolors -b $HOME/.dircolors )
eval "$(lua5.3 ~/repos/z.lua/z.lua --init zsh enhanced once fzf)"
source ~/anaconda3/etc/profile.d/conda.sh

zmodload zsh/zpty
zmodload zsh/mathfunc

# https://stackoverflow.com/questions/10847255/how-to-make-zsh-forward-word-behaviour-same-as-in-bash-emacs
autoload -U select-word-style
select-word-style bash

source ~/.zplug/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/fd", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/ripgrep", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/helm", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/kubectl", from:oh-my-zsh
zplug "plugins/tmux", from:oh-my-zsh
zplug "plugins/fancy-ctrl-z", from:oh-my-zsh

zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
  typeset -g ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=10"
  typeset -g ZSH_AUTOSUGGEST_ORIGINAL_WIDGET_PREFIX="autosuggest-orig-"
  typeset -g ZSH_AUTOSUGGEST_USE_ASYNC=1
  typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE="30"
  typeset -g ZSH_AUTOSUGGEST_HISTORY_IGNORE="cd *"
  typeset -g ZSH_AUTOSUGGEST_ASYNC_PTY_NAME="zsh_autosuggest_pty"
  typeset -g ZSH_AUTOSUGGEST_STRATEGY=(history autocomplete)

zplug "zsh-vi-more/vi-motions"
zplug "michaelxmcbride/zsh-dircycle"
zplug "wfxr/forgit", defer:1
zplug "momo-lab/zsh-abbrev-alias"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "b4b4r07/zsh-vimode-visual", defer:3
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug load
