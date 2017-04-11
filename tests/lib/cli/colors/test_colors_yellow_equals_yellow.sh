test_colors_yellow_equals_yellow() {
	expect_equal $LINENO "${YELLOW}" "\e[93m"
}
