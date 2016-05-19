info() {
	echo
	echo "$1"
	echo
}

question() {
	echo
	read -p "$1" -r
	echo
}

is_yes() {
	[[ "$REPLY" =~ ^[Yy]$ ]] && return 0 || return 1
}