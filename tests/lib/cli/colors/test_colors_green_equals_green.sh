test_colors_green_equals_green() {
	expect_equal $LINENO "${GREEN}" "\e[92m"
}
