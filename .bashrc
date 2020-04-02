VIRTUAL_ENV_DISABLE_PROMPT=true
function omg_prompt_callback() {
    if [ -n "${VIRTUAL_ENV}" ]; then
        echo "\e[0;31m(`basename ${VIRTUAL_ENV}`)\e[0m "
    fi
}
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m'


export PS1="🍺  \$(battery) [\[\033[36m\]\u\[\033[m\]] [\[\033[32m\]\h\033[m\]] [\[\033[33;1m\]\w\[\033[m\]] \[\033[0m\] [\D{%H:%M:%S}] \n -> "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

#################
#### ALIASES ####
#################
alias ls='/bin/ls -laG'
alias gotowork='cd ~/PycharmProjects/cloud/pix4uav;'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'


source ~/.alias/.bashrc_alias_fun
source ~/.alias/.bashrc_alias_aws
source ~/.alias/.bashrc_alias_git
source ~/.alias/.bashrc_alias_python

source /Users/ddelalle/.oh-my-git/prompt.sh


export PATH=$(pyenv root)/shims::$PATH


export EDITOR=/usr/bin/nano
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8 
export LC_ALL=en_US.UTF-8
export PYTHONIOENCODING=UTF-8
export TZ=Europe/Paris

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
eval "$(pyenv virtualenv-init -)"


function list_aliases {
   while read line; do
    if [ "${line:0:5}" == "#desc" ]; then
        name=$(echo ${line:5} | cut -d':' -f 1)  
        desc=$(echo ${line:5} | cut -d':' -f 2) 
        echo -e "${RED}$name${NC}:$desc"         
    fi
    done < $1
}

function list_all_aliases {
    echo '##### Alias fun #####';
    list_aliases ~/.alias/.bashrc_alias_fun;
    echo '';
    echo '##### Alias aws #####';
    list_aliases ~/.alias/.bashrc_alias_aws;
    echo '';
    echo '##### Alias git #####';
    list_aliases ~/.alias/.bashrc_alias_git;
    echo '';
    echo '##### Alias python #####';
    list_aliases ~/.alias/.bashrc_alias_python
}

alias givemealias=list_all_aliases;

export TTC_SAY_BOX=mario
export TTC_WEATHER=Lausanne, CH
export TTC_REPOS='~/Desktop/Dev/Romandie/'
export TTC_REPOS_DEPTH=2
export TTC_GITBOT='gitlog'
export TTC_APIKEYS=true
export TTC_CONSUMER_KEY=3FErJ3jG5Gmlv280DtFmwwVcb

export TTC_CONSUMER_SECRET=ykq6U0i99SYMi5aTVK3PZQX8Ngxo34sLyj6q8ZEDMYTrjlmn2D

export TTC_ACCESS_TOKEN=4427359336-htESrtSFc3RmOSpbOlXIy0INovAn1WMH7j9haHS

export TTC_ACCESS_TOKEN_SECRET=XyprgEcavCKFKGiGqGawNVuzeD4Xr6vbYa2wSurgGWnFv

export TTC_BOTS='tinycarebot,selfcare_bot,magicrealismbot'

if [ -f $(brew --prefix)/etc/bash_completion ]; then source $(brew --prefix)/etc/bash_completion; fi

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
