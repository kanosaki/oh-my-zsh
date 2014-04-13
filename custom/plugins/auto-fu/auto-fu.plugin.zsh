
source $ZSH/plugins/auto-fu/auto-fu.zsh
function zle-line-init () {
    auto-fu-init
}
zle -N zle-line-init
#「-azfu-」を表示させない
zstyle ':auto-fu:var' postdisplay $''
