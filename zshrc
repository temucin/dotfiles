### PERSONAL SETTINGS ###
#sets bash keyboard to vi
set -o vi

#Oh-My-Posh theme
#Instructions: https://ohmyposh.dev/docs/installation/customize#get-inspiration
eval "$(oh-my-posh --init --shell bash --config ~/.poshthemes/powerlevel10k_rainbow.omp.json)" 

### PATH VARS ###
#GOPATH="/usr/local/go/bin"
GOPATH="/home/akhan/go"
PATH="$GOPATH/bin:$PATH" 
#BROWSER="/mnt/c/Program Files (x86)/Google/Chrome/Application/chrome.exe"[

### ALIAS ###
#shortcuts
alias dev="cd ~/dev/"
alias exp="explorer.exe"

#easy nav
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../../'
alias ......='cd ../../../../..'

#dir list
alias l='ls -al' #list everything with details
alias lsl='ls -l' #list just visible with details
alias la='ls -a' #list all file names
alias ll='ls -FGlAhp' #list as many details as possible
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less' #recursively list all directories in LESS view

#cause lazy
alias c='clear' 
alias cl='clear'
alias cls='clear'
alias cle='clear'
alias clr='clear'
alias clea='clear'
alias clera='clear'
alias clrea='clear'
alias claer='clear'
alias h='history'
alias hg='history | grep $1'
alias vsrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias bsrc='. ~/.bashrc'
alias zource='bsrc'

### FUNCTIONS ###

#Shows files with internet address of port arg. Can be used to find processes listening on specified port
pl() {
	lsof -i:$1
}


kpl() {
	if [ $1 -eq 0 ]
		then
			kill -9 _PROC_FROM_PL
		else
			kill -9 $(pl $1 | awk 'FNR == 2 {print $2}')
	fi
}
