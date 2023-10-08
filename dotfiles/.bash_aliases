alias bs='echo \\ Ctrl+U 005C; echo -n "\\" | xclip -selection clipboard'
alias cat='pygmentize -g -O style=colorful,linenos=1'

alias c='clear'

alias i='sudo apt install -y'
alias r='sudo apt remove'
alias u='sudo apt update -y'
alias s='sudo apt search'

alias ls='ls -a --color=auto'
alias h='htop'
alias m='micro'

alias python='/usr/bin/python3'
alias p='/usr/bin/python3'
alias lua='lua5.4'
alias l='lua5.4'

alias t='temp_dir=$(tr -dc "a-z" </dev/urandom | head -c 10); mkdir -p "/tmp/$temp_dir" && cd "/tmp/$temp_dir"'
alias sec='pwgen -y1 31 | xclip -selection clipboard'
