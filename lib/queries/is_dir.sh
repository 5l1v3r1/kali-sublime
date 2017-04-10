is_dir() {

	local directory="$1"

	if ! [ -d "$directory" ]; then

		return 1

	fi

	return 0

}
