
# Python 
alias nose="nosetests --rednose"
alias py="python"

alias hd="od -x"
alias g="git"

alias p="popd"
alias po="popd"
alias pp='p;p'
alias ppp='p;p;p'
#alias cd="cd \!*; dirs"
alias gd='dirs -v; echo -n "select number: "; read newdir; cd +"$newdir"'

alias re="ruby -e "
alias ta="tmux attach || tmux new"
alias l="ls"

alias me="chmod u+x "
alias -g L='| less'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep'
alias -g W='| wc'
alias -g S='| sed'
alias -g A='| awk'
alias -g X='| xargs'
alias -g I='| iconv '
alias -g N='| nkf '
#alias -g PE='| perl -pe '
#alias -g P='| perl -pe '
#alias -g PN='| perl -ne '
alias -g RE='| ruby -e '
alias -g ROL='| ruby -p -e '
alias -g RB='| ruby '

alias -g UTF='| nkf -wLu '
alias -g EUC='| nkf -eLu '
alias -g SJIS='| nkf -sLw '

alias gpp="g++"

alias le="less"
alias sml='rlwrap sml'
alias vi='vim'
