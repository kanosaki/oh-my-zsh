
#bindkey
bindkey -e

# DELETE Keyを設定
bindkey "^[[3~" delete-char

# screen に対応させる
bindkey "^@" backward-delete-char

# HOME END keybind
bindkey  "^[[1~" beginning-of-line
bindkey  "^[[4~" end-of-line
bindkey ' ' magic-space

# PgDn PgUp keybind
bindkey  "^[[6~" history-incremental-search-backward
bindkey  "^[[5~" history-incremental-search-forward

autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "\\ef" history-beginning-search-backward-end
bindkey "\\eb" history-beginning-search-forward-end

bindkey '^D' extended_logout

# reverse menu completion binded to Shift-Tab
#
bindkey "\e[Z" reverse-menu-complete

bindkey '^xp' predict-on
bindkey '^x^p' predict-off
