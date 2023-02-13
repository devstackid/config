
PATH=$PATH:
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

alias run='pkg update -y && pkg upgrade -y'
alias clear='clear && python /data/data/com.termux/files/usr/etc/main.py'
clear

PS1='
\[\e[0;93m\]\w\[\e[0m\] [ \[\e[0;91m\]Dev \[\e[0m\]\[\e[91m\]ID\[\e[93m\]\[\e[0m\] ]: '
echo ""

PROMPT_DIRTRIM=2
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

