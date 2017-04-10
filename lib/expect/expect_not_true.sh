expect_not_true() {
	
	local basefile=$(basename $0)
	local baseline="$1"
	local actual="$2"
	local expected="true"
	
	if [ "${actual}" == "${expected}" ]; then
		echo -e "[${RED}FAILED${CLEAR}] ${FUNCNAME[1]}"
		echo -e
		echo -e "  ${MAGENTA}File.........: ${basefile}, Line: ${baseline}${CLEAR}"
		echo -e
		echo -e "  ${CYAN}Not Expected.: ${expected}${CLEAR}"
		echo -e "  ${RED}Actual.......: ${actual}${CLEAR}"
		echo -e
		return 1
	fi
	
	echo -e "[  ${GREEN}OK${CLEAR}  ] ${FUNCNAME[1]}" 
	return 0
	
}