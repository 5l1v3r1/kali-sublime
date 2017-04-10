test_is_dir_exist_not_true() {
	expect_true $LINENO $(is_dir "a_directory_that_does_not_exist" || echo true)
}
