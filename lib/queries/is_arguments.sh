is_arguments() {

	local basefile="$(basename $0)"
	local baseline="$1"
	local actual_arguments="$2"
	local expected_arguments="$3"
	  
	if ! [ "${actual_arguments}" == "${expected_arguments}" ]; then

		echo -e "${basefile}: line ${baseline}: Expected ${expected_arguments} and got ${actual_arguments} arguments"
		exit 1

	fi

	echo true
	return 0

}
