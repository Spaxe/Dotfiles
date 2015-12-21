alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias copy="rsync -ah --progress"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Colourful prompt
source ~/utils/colours.sh
PS1="\n\[$BRed\]\u \[$Red\]∞\[$Green\]\w \[$Yellow\]\$(vcprompt)\[$Red\]》\[$Color_Off\] "

# Git auto-completion
source ~/utils/git-completion.sh

# NOT checked into Github Repo for security reasons
source ~/.private-config

# Executables paths
export PATH=/Users/$USER/utils:/usr/local/bin:$PATH

function _update_ps1() { export PS1="$(/Users/ho03b/utils/promptastic/promptastic.py $?)"; }
export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
