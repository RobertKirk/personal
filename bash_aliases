# A file with various aliases for git, vscode environment and others

if [ -f ~/repos/personal/aliases ]; then
    . ~/repos/personal/aliases
fi

# Git branch bash completion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash

  # Add git completion to aliases
  __git_complete g __git_main
  __git_complete gco _git_checkout
  __git_complete gm __git_merge
  __git_complete gp _git_pull
  __git_complete ga _git_add
fi

gitshort() {
        short=$1; shift
        long=$1; shift
        alias $short="git $long $@"
        __git_complete $short _git_$long
}
gitshort gco checkout
gitshort gp pull
gitshort ga add
