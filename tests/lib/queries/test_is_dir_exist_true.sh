test_is_dir_exist_true(){
	mkdir ".temp"
	expect_true $LINENO $(! is_dir ".temp" || echo true)
	rmdir ".temp"
}
