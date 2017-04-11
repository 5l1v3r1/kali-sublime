test_colors_clear_equals_clear() {
	expect_equal $LINENO "${CLEAR}" "\e[0m"
}
