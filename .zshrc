# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="daveverwer"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git svn)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:~/bin/
hash -d 374="/work/code/FVA374"

export GREP_OPTIONS='--color=auto --exclude-dir=\.svn --exclude-dir=\.git --exclude-dir=CVS --exclude-dir=build.tmp'
alias cp='nocorrect cp'

alias gosvn='cd /work/code/SVN_TRUNK'
alias gom4='cd /work/code/UTM_M4'
alias gom3='cd /work/code/UTM_M3'
alias goxml='cd /work/code/json_xml/'
alias go35='cd /work/code/UTM_M3.5_INTEGRATION_READYNAS'
alias go3g='cd /work/code/UTM_M3.5_3G'
alias goapp='cd /work/code/UTM_M3.5_AppFW'
alias gogit='cd /work/code/GIT_DB'
alias go374='cd /work/code/FVA374'
alias chdev='SHELL=/bin/bash chroot /work/DEV/UTM_DEV/'

alias svnst="svn st | awk '/^[^?]/'"
alias ggr='git log --pretty=format:"[%an %h]: %s" --topo-order --graph'
# cpwall337
alias tost3='ssh apps@st3.cpsecure.com'
#alias getpw2='sh /home/cxsun/GIT_DB/tool/getPasswd.sh'
alias getpw='sh /work/code/GIT_DB/tool/descrypt_passwd/getPasswd.sh'
alias ec='emacsclient -t -a ""'
# tmux
alias tn='tmux new -ds '
alias ta='tmux attach -t '
alias tls='tmux ls'

alias nobomb="awk '{if(NR==1)sub(/^\xef\xbb\xbf/,\"\");print}' "
alias vimdiff="vimdiff --noplugin"
alias netrefresh='killall dhclient; sleep 1; dhclient eth0'
alias ssh='SHELL=/bin/sh TERM=xterm ssh'

function portal_login()
{
    local host=192.168.1.1
    local action=portal_login
    local user=cxsun
    local pass=123456
    /bin/sh /work/code/GIT_DB/tool/simulate_ui_action.sh $host $action $user $pass
}

