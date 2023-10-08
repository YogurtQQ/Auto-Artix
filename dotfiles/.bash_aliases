function copy() {
	echo "$1" | xclip -sel clipboard
}

function mkdircd() {
	mkdir "$1" && cd "$1"
}

alias t='temp_dir=$(tr -dc "a-z" </dev/urandom | head -c 10); mkdir -p "/tmp/t/$temp_dir" && cd "/tmp/t/$temp_dir"'
alias sec='pwgen -syn1 31 | xclip -selection clipboard'

alias bs='echo \\ Ctrl+U 005C; echo -n "\\" | xclip -selection clipboard'
alias cat='pygmentize -g -O style=colorful,linenos=1'

alias python='/usr/bin/python3'
alias p='/usr/bin/python3'
alias lua='lua5.4'
alias l='lua5.4'

alias i='sudo apt install -y'
alias r='sudo apt remove'
alias u='sudo apt update -y'
alias s='sudo apt search'

alias ls='ls -a --color=auto'
alias h='htop'
alias m='micro'

alias c='clear'

function new() {
  t && go mod init example && \cat <<EOL > main.go
package main

import (
    "fmt"
)

func main() {
    fmt.Println("Hello, world!")
}
EOL
  echo "Created 'main.go' with sample Go code."
  \cat <<EOL > a.py
import math
print("Hello, world!")
EOL
  echo "Created 'a.py' with sample Python code."
}
