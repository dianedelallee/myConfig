# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH:

# Path to your oh-my-zsh installation.
export ZSH="/Users/ddelalle/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export EDITOR=/usr/bin/nano
export LANG=en_US.UTF-8
export LOCALE=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8 
export LC_ALL=en_US.UTF-8
export PYTHONIOENCODING=UTF-8
export TZ=Europe/Paris

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


##################
#### COLOR ####
##################
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m'

##################
#### FUNCTION ####
##################
function list_aliases() {

for line in "${(@f)"$(<$1)"}"
    {
	sub=#desc
	if [ "${line/$sub}" = "$line" ] ; then

	else
        	name=$(echo ${line:5} | cut -d':' -f 1)  
        	desc=$(echo ${line:5} | cut -d':' -f 2) 
        	echo -e "${RED}$name${NC}:$desc";         
    	fi
	}
}

function list_all_aliases() {
    echo -e "${GREEN}##### ${BLUE} Alias fun ${GREEN}#####${NC}";
    list_aliases ~/.alias/.bashrc_alias_fun;
    echo '';
echo -e "${GREEN}##### ${BLUE} Alias was ${GREEN}#####${NC}";
    list_aliases ~/.alias/.bashrc_alias_aws;
    echo '';
echo -e "${GREEN}##### ${BLUE} Alias git ${GREEN}#####${NC}";
    list_aliases ~/.alias/.bashrc_alias_git;
    echo '';
echo -e "${GREEN}##### ${BLUE} Alias python ${GREEN}#####${NC}";
    list_aliases ~/.alias/.bashrc_alias_python;
}

#################
#### ALIASES ####
#################
alias ls='/bin/ls -laG'
alias gotowork='cd ~/PycharmProjects/cloud/pix4uav;'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias givemealias=list_all_aliases;
alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew doctor'

source ~/.alias/.bashrc_alias_fun
source ~/.alias/.bashrc_alias_aws
source ~/.alias/.bashrc_alias_git
source ~/.alias/.bashrc_alias_python



# auto-completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
  . /opt/local/etc/profile.d/bash_completion.sh
fi



POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir virtualenv vcs ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(battery time)

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# Double-Lined Prompt
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=""

source  ~/powerlevel9k/powerlevel9k.zsh-theme


export PATH="/Users/ddelalle/.rbenv/bin:/Users/ddelalle/PycharmProjects/cloud/pix4uav/pix4d-django-36/bin:/usr/local/opt/postgresql@9.5/bin:/Library/Frameworks/Python.framework/Versions/3.6/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Wireshark.app/Contents/MacOS:/usr/local/bin/gem"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
