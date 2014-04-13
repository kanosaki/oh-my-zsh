
umask 022

# 関数
find-grep () { find . -type f -print | xargs grep -n --binary-files=without-match $@ }
ls-grep(){ ls | grep --color $1 }
ll-grep(){ ls -l | grep --color $1 }
la-grep(){ ls -la | grep --color $1 }

# ヒストリの設定
HISTFILE=~/.histfile
HISTSIZE=1000000
SAVEHIST=1000000

# 履歴ファイルに時刻を記録
setopt extended_history

# 補完するかの質問は画面を超える時にのみに行う｡
LISTMAX=0

autoload -Uz compinit; compinit

# Prediction
autoload -U predict-on
zle -N predict-on

autoload -U zmv
setopt AUTO_LIST
setopt AUTO_MENU

# sudo でも補完の対象
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin
## Large small
#

# Completion caching
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache
zstyle ':completion:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _oldlist _complete  # _prefix _correct _prefix _match _approximate
zstyle ':completion:*:*:default' force-list always

# 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:warnings' format 'No matches for: %d'
zstyle ':completion:*' group-name ''

# cd をしたときにlsを実行する
function chpwd() { 
    ls
}

