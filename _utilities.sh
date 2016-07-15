headline() {
    echo
    echo "$1"
    echo
}

ask_question() {
    echo
    read -p "$1" -r
    echo
}

said_yes() {
    [[ "$REPLY" =~ ^[Yy]$ ]] && return 0 || return 1
}
