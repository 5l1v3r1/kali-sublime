is_verbose() {

	if [ "$VERBOSE" != "false" ]; then

		return 1

	fi

	return 0
    
}
