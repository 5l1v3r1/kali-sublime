expect_not_equal() {

	local basefile=$(basename $0)
	local baseline="$1"
	local actual="$2"
	local not_expected="$3"

	if [ "${actual}" == "${not_expected}" ]; then
		alert "[${RED}FAILED${CLEAR}] ${FUNCNAME[1]}"
		alert
		alert "  ${MAGENTA}File.........: ${basefile}, Line: ${baseline}${CLEAR}"
		alert
		alert "  ${CYAN}Not Expected.: ${not_expected}${CLEAR}"
		alert "  ${RED}Actual.......: ${actual}${CLEAR}"
		alert
		return 1
	fi
	
	echo -e "[  ${GREEN}OK${CLEAR}  ] ${FUNCNAME[1]}" 
	return 0
}