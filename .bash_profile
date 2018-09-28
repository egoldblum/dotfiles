#nothing to see here, just read .bashrc
if [ -r ~/.bashrc ]; then
	source ~/.bashrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
[[ -s /Users/egoldblu/.nvm/nvm.sh ]] && . /Users/egoldblu/.nvm/nvm.sh # This loads NVM

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/egoldblum/google-cloud-sdk/path.bash.inc' ]; then . '/Users/egoldblum/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/egoldblum/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/egoldblum/google-cloud-sdk/completion.bash.inc'; fi
