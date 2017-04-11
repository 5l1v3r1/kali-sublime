test_colors_red_equals_red() {
	expect_equal $LINENO "${RED}" "\e[91m"
}
