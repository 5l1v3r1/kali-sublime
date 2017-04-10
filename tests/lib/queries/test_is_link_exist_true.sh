test_is_link_exist_true() {
	ln -s "lib/import_all.sh" "exist_true"
	expect_true $LINENO $(! is_link "exist_true" || echo true )
	unlink "exist_true"
}
