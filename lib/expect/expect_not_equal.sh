expect_not_equal() {

	local basefile=$(basename $0)
	local baseline="$1"
	local actual="$2"
	local not_expected="$3"

	if [ "${actual}" == "${not_expected}" ]; then
		echo -e "[${RED}FAILED${CLEAR}] ${FUNCNAME[1]}"
		echo -e
		echo -e "  ${MAGENTA}File.........: ${basefile}, Line: ${baseline}${CLEAR}"
		echo -e
		echo -e "  ${CYAN}Not Expected.: ${not_expected}${CLEAR}"
		echo -e "  ${RED}Actual.......: ${actual}${CLEAR}"
		echo -e
		return 1
	fi
	
	echo -e "[  ${GREEN}OK${CLEAR}  ] ${FUNCNAME[1]}" 
	return 0
}