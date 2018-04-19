source ~/.profile
alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias copy="rsync -ahirv --progress"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"
alias date="gdate"
alias lock="open -a ScreenSaverEngine"

# gpg-agent prompt
# github massar/pinentry-mac
export GPG_TTY=$(tty)

# Autojump
# brew install autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Bash completion:
# brew install bash-completion
# brew tap homebrew/completions
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Git auto-completion
source ~/dev/Dotfiles/git-completion.sh

# NOT checked into Github Repo for security reasons
source ~/.private-config

# Executables paths
export PATH=$HOME/.local/bin:$HOME/.cabal/bin:$HOME/dev/Dotfiles:/usr/local/bin:$PATH

# github promptastic/promptastic
function _update_ps1() { export PS1="$(/Users/$USER/dev/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"

