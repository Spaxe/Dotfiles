alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias copy="rsync -ahirv --progress"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"
alias date="gdate"

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Git auto-completion
source ~/dev/Dotfiles/git-completion.sh

# NOT checked into Github Repo for security reasons
source ~/.private-config

# Executables paths
export PATH=/Users/$USER/Dotfiles:/usr/local/bin:$PATH

function _update_ps1() { export PS1="$(/Users/$USER/dev/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
