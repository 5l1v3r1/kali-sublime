is_empty() {

	local variable="$1"

	if ! [ -z "$variable" ]; then
		
		return 1

	fi

	return 0

}
