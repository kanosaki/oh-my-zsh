#!/bin/zsh
TARGET_PATH=$ZSH/plugins/auto-fu/auto-fu.zsh
if [[ -f $TARGET_PATH ]]; then
    rm $TARGET_PATH
fi
wget https://raw.github.com/takaken/auto-fu.zsh/master/auto-fu.zsh -O $TARGET_PATH
zcompile $TARGET_PATH

