#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
alias cl='bash ~/cl.sh'
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
alias m='bash ~/m.sh'
alias wr='bash ~/wbr.sh' 
alias sw='bash ~/.stopwatch.sh' 
alias neofetch='fastfetch --config ../scripts/ff.jsonc'

# Created by `pipx` on 2024-11-09 15:13:32
export PATH="$PATH:/home/aarnav/.local/bin"
