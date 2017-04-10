test_is_empty_not_true() {
	local not_empty_var="not_empty_var"
	expect_not_true $LINENO $(! is_empty "$not_empty_var" || echo true)
}
