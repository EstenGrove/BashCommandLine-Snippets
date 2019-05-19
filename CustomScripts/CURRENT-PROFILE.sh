export PATH=$PATH:/Users/stevengore/bin

git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\u@\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\]\$ " 

############# ALIASES ##############

# Navigating Folders
alias P1='cd /Users/stevengore/Desktop/WebDevelopment/Projects'
alias P2='cd /Users/stevengore/Documents/Projects2'
alias Docs='cd /Users/stevengore/Documents'
alias c='clear'


# VARIABLES
