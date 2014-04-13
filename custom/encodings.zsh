
#-------------------------------------------------------
# 引数のファイルを euc-LF や sjis-CR+LF に変換
function euc() {
    for i in $@; do;
        nkf -e -Lu $i >! /tmp/euc.$$ # -Lu :改行を LF にする
        mv -f /tmp/euc.$$ $i
    done;
}
function sjis() {
    for i in $@; do;
        nkf -s -Lw $i >! /tmp/euc.$$ # -Lu :改行を CR+LF にする
        mv -f /tmp/euc.$$ $i
    done;
}

function utf(){
    for i in $@; do;
        nkf -w -Lu $i >! /tmp/utf.$$
        mv -f /tmp/utf.$$ $i
    done;
}
