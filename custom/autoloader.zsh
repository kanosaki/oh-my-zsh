

autoload_commands=(
    uname
    hostname
)

[[ -z $ZSH_AUTOLOAD_DIR ]]; export ZSH_AUTOLOAD_DIR=$ZSH/custom/autoload

for com in $autoload_commands; do
    local com_result=$($com)
    local candidate_path=$ZSH_AUTOLOAD_DIR/$com.$com_result.zsh
    if [[ -f $candidate_path ]]; then
        source $candidate_path
    fi
done

