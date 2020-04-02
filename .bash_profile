if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
export PATH="$HOME/.poetry/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
