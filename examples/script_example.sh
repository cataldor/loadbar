#!/bin/sh

. ./loadbar_api

display_bar_ntimes() {
	db_limit=$1
	for i in $(seq 0 "$db_limit"); do
		loadbar_display_bar_once "$i"
		sleep 0.005
	done
	echo
}

api_test() {
	loadbar_init
	display_bar_ntimes 100

	loadbar_init -t Loading
	display_bar_ntimes 100

	loadbar_init -t Loading -p
	display_bar_ntimes 100

	loadbar_init -t Loading -p -v
	display_bar_ntimes 100

	loadbar_init -t Loading -p -v -m 300
	display_bar_ntimes 300

	loadbar_init -t Loading -p -v -m 300 -s 70
	display_bar_ntimes 300

	loadbar_init -t Loading -p -v -m 300 -s 70 -n
	display_bar_ntimes 300

	loadbar_init -t Loading -p -v -m 300 -s 70 -n -b "-"
	display_bar_ntimes 300

	loadbar_init -t Loading -p -v -m 300 -s 70 -n -b "-" -f "#"
	display_bar_ntimes 300

}

api_test
