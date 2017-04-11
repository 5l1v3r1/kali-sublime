test_styles_bold_equals_bold() {
	expect_equal $LINENO "$BOLD" "\e[1m"
}
