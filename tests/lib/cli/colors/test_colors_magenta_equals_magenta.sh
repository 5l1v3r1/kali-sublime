test_colors_magenta_equals_magenta() {
	expect_equal $LINENO "${MAGENTA}" "\e[95m"
}
