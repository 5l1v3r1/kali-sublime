#!/bin/bash

source lib/import_all.sh

import_all "tests/lib"

test_colors
test_globals
test_styles
test_queries
