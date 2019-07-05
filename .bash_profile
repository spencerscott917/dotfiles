# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

PATH="/Users/Spencer/repos/haloshapes/code:${PATH}"
export PATH


# added by Anaconda3 4.1.1 installer
export PATH="/Users/Spencer/anaconda/bin:$PATH"

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$HOME/dust-emissivity/dust_emissivity:$PATH" 

# User custom aliases
alias hpg="ssh spencer.scott@hpg2.rc.ufl.edu"

alias ls='ls -G'

alias top="top -o cpu"

alias ufrc="cd /Volumes/ufrc/narayanan/spencer.scott/surf-2018"

alias viminstall='vim +PluginInstall +qall'

alias ll='ls -l'

alias lh='ls -lh'

alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

alias lynx='lynx -vikeys'

alias hpg_jupyter='ssh -N -L localhost:8888:localhost:8888 spencer.scott@hpg2.rc.ufl.edu'

alias midway_jupyter='ssh -N -L localhost:8888:localhost:8889 spencers@midway2.rcc.uchicago.edu'

alias midway='ssh spencers@midway2.rcc.uchicago.edu'

alias nb='jupyter notebook'

alias skim='open -a "Skim"'

export PATH="$HOME/.cargo/bin:$PATH"

export iraf=~/iraf/
export IRAFSEARCH=macintel
export PYTHONPATH=$PYTHONPATH:'~/repos/hydrotools'

# Add iraf setup commands
if [ -e /Users/Spencer/.iraf/setup.sh ]; then
    source /Users/Spencer/.iraf/setup.sh
fi

export PATH="$HOME/.bash_scripts:$PATH"

alias mexec="chmod +x"

eval $(thefuck --alias)

alias msg_tegan="imessage 8028290130"

alias jupiter="ssh spencer@192.168.0.19"

alias ua="ssh spencerscott@hpc.arizona.edu" 

PS1="\[\033[1;32m\][\u@saturn:\w]\$\[\033[0m\] "
