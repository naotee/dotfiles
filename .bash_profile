alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

# ruby env
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

test -r ~/.bashrc && . ~/.bashrc
