test_styles_blink_equals_blink() {
	expect_equal $LINENO "$BLINK" "\e[5m"
}
