function copy() {
	echo "$1" | xclip -sel clipboard
}

function mkdircd() {
	mkdir "$1" && cd "$1"
}

t() {
  if [ $# -lt 1 ]; then
    echo "Usage: t <directory_name>"
    return 1
  else
    random_chars=$(tr -dc "a-z" </dev/urandom | head -c 10)
    temp_dir="/tmp/t/$1$random_chars"
    mkdir -p "$temp_dir" && cd "$temp_dir"
  fi
}

alias t2='random_chars=$(tr -dc "a-z" </dev/urandom | head -c 10); mkdir -p "/tmp/t/$1$random_chars" && cd "/tmp/t/$1$random_chars"'

alias sec='pwgen -syn1 31 | xclip -selection clipboard'

alias bs='echo \\ Ctrl+U 005C; echo -n "\\" | xclip -selection clipboard'
alias fcat='pygmentize -g -O style=colorful,linenos=1'

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
  if t; then
    go mod init example
    cat <<EOL > main.go
package main

import (
    "fmt"
)

func main() {
    fmt.Println("Hello, world!")
}
EOL
    echo "Created 'main.go' with sample Go code."

    cat <<EOL > a.py
import math
print("Hello, world!")
EOL
    echo "Created 'a.py' with sample Python code."
  fi
}
