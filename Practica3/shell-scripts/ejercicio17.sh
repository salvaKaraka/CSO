#!/bin/bash

for file in *; do
	if [ -f "$file" ]; then
		echo "$(basename $file | tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'aA')"
	fi
done
exit 0
