alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Colourful prompt
source ~/utils/colours.sh
PS1="\n\[$BRed\]\u \[$Red\]∞\[$Green\]\w \[$Yellow\]\$(vcprompt)\[$Red\]》\[$Color_Off\] "

# Git auto-completion
source ~/utils/git-completion.sh

# Executables paths
export PATH=/Users/$USER/utils:/usr/local/bin:$PATH
