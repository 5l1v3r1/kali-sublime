test_is_file_exist_not_true() {
	expect_not_true $LINENO $(! is_file "file_exists_not_true" || echo true)
}
