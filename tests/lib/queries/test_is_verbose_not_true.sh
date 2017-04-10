test_is_verbose_not_true() {
	local global_verbose=$VERBOSE
	export VERBOSE=false
	expect_not_true $LINENO $(is_verbose || echo true)
	VERBOSE=$global_verbose
}
