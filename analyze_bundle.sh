#!/bin/bash

# we need a tmpfile here because lnav drops lines when
# using <(command) as a file argument

TMPFILE=$(mktemp /tmp/lnav-analysis.log)
trap "rm -f $TMPFILE" EXIT

if [ -z "$1" ]; then
	echo "Please pass in the directory containing nginx-access.log files you'd like to analyze."
        exit 1
fi

find $1 -regex '.*nginx-access\.log\.*[^gz]*' | xargs cat > $TMPFILE

lnav $TMPFILE -f ./performance-report.lnav -n
