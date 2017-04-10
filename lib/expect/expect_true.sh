expect_true() {
	
	local basefile=$(basename $0)
	local baseline="$1"
	local actual="$2"
	local expected="true"
	
	if [ "${actual}" != "${expected}" ]; then
		alert "[${RED}FAILED${CLEAR}] ${FUNCNAME[1]}"
		alert
		alert "  ${MAGENTA}File.....: ${basefile}, Line: ${baseline}${CLEAR}"
		alert
		alert "  ${CYAN}Expected.: ${expected}${CLEAR}"
		alert "  ${RED}Actual...: ${actual}${CLEAR}"
		alert
		return 1
	fi
	
	echo -e "[  ${GREEN}OK${CLEAR}  ] ${FUNCNAME[1]}" 
	return 0
	
}