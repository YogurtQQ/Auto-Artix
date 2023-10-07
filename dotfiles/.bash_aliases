alias cat='pygmentize -g -O style=colorful,linenos=1'

alias i='sudo apt install -y'
alias r='sudo apt remove'
alias u='sudo apt update -y'
alias s='sudo apt search'

alias c='clear'

alias ls='ls -a --color=auto'

alias python='/usr/bin/python3'
alias p='/usr/bin/python3'
alias lua='lua5.4'
alias l='lua5.4'

alias m='micro'
alias h='htop'

alias t='temp_dir=$(tr -dc "a-z" </dev/urandom | head -c 10); mkdir -p "/tmp/$temp_dir" && cd "/tmp/$temp_dir"'
