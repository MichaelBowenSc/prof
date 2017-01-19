
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
HISTCONTROL=ignoreboth:erasedups HISTSIZE=100000 HISTFILESIZE=200000
ls --color=al > /dev/null 2>&1 && alias ls='ls -F --color=al' || alias ls='ls -G'
md () { [$# = 1 ] && mkdir -p "$@" && cd "$@" || echo "Error - no directory passed!"; }
HOST='\[$txtwht\]@\[$txtylw\]\h'; HOST=''$HOST
TIME='\[$txtwht\]\t \[$txtred\]'
LOCATION='\[$bldwht\]:\[$txtcyn\]`pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"`'
BRANCH=' \[$txtgrn\]$git_branch\[$txtred\]$git_dirty\[$txtrst\]\n\$'
PS1=$TIME$USER$HOST$LOCATION$BRANCH
##PS1='\u@\h \w \[$txtcyn\]$git_branch\[$txtred\]$git_dirty\[$txtrst\]\n\$'
PS2='\[\033[01;36m\]>'
set -o vi # vi at command line
export EDITOR=vim
test -f ~/.bash_aliases && . $_
test -f ~/.git-completion.bash && . $_
test -f ~/.autojump/etc/profile.d/autojump.sh && . $_

source /usr/local/lib/dnx/bin/dnvm.sh

###-tns-completion-start-###
if [ -f /Users/m/.tnsrc ]; then 
    source /Users/m/.tnsrc 
fi
###-tns-completion-end-###

###-bash-completion-start-###
if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi
###-bash-completion-end-###