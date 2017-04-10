test_is_arguments_1_not_true() {
	expect_not_true $LINENO $(is_arguments $LINENO 2 1)
}
