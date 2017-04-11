test_colors_cyan_equals_cyan() {
	expect_equal $LINENO "${CYAN}" "\e[96m"
}
