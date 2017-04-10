test_is_file_exist_true() {
	touch "test_is_file_exist_true.txt"
	expect_true $LINENO $(! is_file "test_is_file_exist_true.txt" || echo true)
	rm "test_is_file_exist_true.txt"
}
