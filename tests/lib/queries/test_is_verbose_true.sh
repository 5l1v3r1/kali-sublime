test_is_verbose_true() {
	local global_verbose=$VERBOSE
	export VERBOSE=true
	expect_true $LINENO $(is_verbose || echo true)
	VERBOSE=$global_verbose
}
