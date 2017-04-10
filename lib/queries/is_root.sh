is_root() {

	local uid=$(id -u)
	local root_uid=0
	local basefile="$(basename $0)"
	local baseline="$1"

	if [ "${uid}" != "${root_uid}" ]; then

		echo -e "${RED}File: ${basefile} line ${baseline}: Not root user - Please run as root user.${CLEAR}"
		exit 1

	fi

	return 0

}
