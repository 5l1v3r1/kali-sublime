is_link() {

	local symlink="$1"

	if ! [ -L "$symlink" ]; then
		if ! [ -h "$symlink" ]; then
			if ! [ -d "$symlink" ]; then
				return 1
			fi
		fi
	fi

	return 0
    
}
