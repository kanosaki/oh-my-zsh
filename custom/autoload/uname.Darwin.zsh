

if (( $+commands[mvim] )); then
    alias v=mvim
fi

if (( $+commands[rmtrash] )); then
    alias rm=rmtrash
else
    echo "+++++ rmtrash not found ++++++"
fi
