#source other settings
#NB: .localrc contains host specific commands, not linked to ~/dotfiles
for file in ~/.{exports,aliases,prompt,localrc}; do
	[ -r "$file" ] && source "$file"
done
unset file

#history search on arrow
bind '"\e[A"':history-search-backward
bind '"\e[B"':history-search-forward

#update LINES/COLUMNS after each command to prevent weird line wrap problems
shopt -s checkwinsize

#append instead of overwrite to history file on exit
shopt -s histappend
