alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

# ruby env
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

test -r ~/.bashrc && . ~/.bashrc

# pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
export PYENV_ROOT=/usr/local/var/pyenv

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# mysqldump 
export PATH=/usr/local/mysql-5.6.26-osx10.8-x86_64/bin:$PATH

#python3.4
export PATH=/usr/local/var/pyenv/versions/3.4.3/lib/python3.4/site-packages:$PATH
export LC_ALL='ja_JP.UTF-8'

# history size
HISTSIZE=1000000

