test_is_link_exist_not_true() {
	expect_not_true $LINENO $(! is_link "exist_not_true" || echo true)
}
