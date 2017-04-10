test_is_empty_true() {
	local variable=""
	expect_true $LINENO $(! is_empty "$variable" || echo true)
}
