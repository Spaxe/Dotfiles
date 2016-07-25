alias ls="ls -fGH"
alias ll="ls -aFhl"
alias cd..="cd .."
alias ..="cd .."
alias grep="grep --color"
alias copy="rsync -ah --progress"
alias wgetall="wget --no-verbose --no-parent --recursive --level=1 --no-directories"
alias date="gdate"

# Autojump
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh

# Colourful prompt
# source ~/utils/colours.sh
# PS1="\n\[$BRed\]\u \[$Red\]∞\[$Green\]\w \[$Yellow\]\$(vcprompt)\[$Red\]》\[$Color_Off\] "

# Git auto-completion
source ~/utils/git-completion.sh

# NOT checked into Github Repo for security reasons
source ~/.private-config

# Executables paths
export PATH=/Users/$USER/utils:/usr/local/bin:$PATH
export GDAL_DATA=/usr/local/share/gdal

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
