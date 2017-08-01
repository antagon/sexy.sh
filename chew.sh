#!/bin/bash

if [ $# -lt 1 ]; then
	echo "Usage: $0 <file>"
	exit 1
fi

for arg in "$@"
do
	echo "$(base64 -w 0 "$arg") "
done

exit 0

