#!/bin/bash
# SPDX-FileCopyrightText: 2023

ng () {
	echo NG at Line $1
	ret=1
}

res=0

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK

exit $res
