export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias mvim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/mvim "$@"'
alias vim='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
alias rm='rmtrash'
alias f="open ."
cdf () {
        target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
        if [ "$target" != "" ]
        then
                cd "$target"
                pwd
        else
                echo 'No Finder window found' >&2
        fi
}
export st=~/Documents/sourceTree/
alias st="cd $st;ls"
export gh=~/Documents/sourceTree/rc_github/
alias gh="cd $gh;ls"
alias text="cd ~/Documents/text/ ;ls"
alias consoledev="echo 'ec2-52-69-99-166.ap-northeast-1.compute.amazonaws.com'"


#history share
function share_history {
    history -a
    history -c
    history -r
}
#PROMPT_COMMAND='share_history'
#shopt -u histappend


