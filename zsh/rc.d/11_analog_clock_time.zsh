# Unicode anilog clock function. Dumb everywhere.
analog-clock-time() {
    local time=$(date +%I%M);
    if [ "$time" -lt 115 ]
    then
        echo -n '🕐'
    elif [ "$time" -lt 145 ]
    then
        echo -n '🕜'
    elif [ "$time" -lt 215 ]
    then
        echo -n '🕑'
    elif [ "$time" -lt 245 ]
    then
        echo -n '🕝'
    elif [ "$time" -lt 315 ]
    then
        echo -n '🕒'
    elif [ "$time" -lt 345 ]
    then
        echo -n '🕞'
    elif [ "$time" -lt 415 ]
    then
        echo -n '🕓'
    elif [ "$time" -lt 445 ]
    then
        echo -n '🕟'
    elif [ "$time" -lt 515 ]
    then
        echo -n '🕔'
    elif [ "$time" -lt 545 ]
    then
        echo -n '🕠'
    elif [ "$time" -lt 615 ]
    then
        echo -n '🕕'
    elif [ "$time" -lt 645 ]
    then
        echo -n '🕡'
    elif [ "$time" -lt 715 ]
    then
        echo -n '🕖'
    elif [ "$time" -lt 745 ]
    then
        echo -n '🕢'
    elif [ "$time" -lt 815 ]
    then
        echo -n '🕗'
    elif [ "$time" -lt 845 ]
    then
        echo -n '🕣'
    elif [ "$time" -lt 915 ]
    then
        echo -n '🕘'
    elif [ "$time" -lt 945 ]
    then
        echo -n '🕤'
    elif [ "$time" -lt 1015 ]
    then
        echo -n '🕙'
    elif [ "$time" -lt 1045 ]
    then
        echo -n '🕥'
    elif [ "$time" -lt 1115 ]
    then
        echo -n '🕚'
    elif [ "$time" -lt 1145 ]
    then
        echo -n '🕦'
    elif [ "$time" -lt 1215 ]
    then
        echo -n '🕛'
    elif [ "$time" -lt 1300 ]
    then
        echo -n '🕛'
    else
        echo -n '⭕'
    fi
}

# activate it
use-utf8-clock () {
    export RPROMPT='$(analog-clock-time)  ${PR_LIGHT_BLACK}(%D{%m-%d %H:%M}) [%?] ${vcs_info_msg_0_}${PR_RESET_COLOR}' # shows exit status of previous command
}
