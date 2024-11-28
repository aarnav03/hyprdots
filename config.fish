if status is-interactive
    # Commands to run in interactive sessions can go here

end
starship init fish | source
set -U fish_greeting
alias cl='bash ~/cl.sh'

alias m='bash ~/m.sh'
alias wr='bash ~/wbr.sh' 
alias neofetch='fastfetch --config ~/ff.jsonc'
function y
	set tmp (mktemp -t "yazi-cwd.XXXXXX")
	yazi $argv --cwd-file="$tmp"
	if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
		builtin cd -- "$cwd"
	end
	rm -f -- "$tmp"
end
