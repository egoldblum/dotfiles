#nothing to see here, just read .bashrc
if [ -r ~/.bashrc ]; then
	source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Users/egoldblu/.nvm/nvm.sh ]] && . /Users/egoldblu/.nvm/nvm.sh # This loads NVM
