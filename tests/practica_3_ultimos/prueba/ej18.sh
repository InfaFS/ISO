#!/bin/bash




array=()

for i in "/etc/log"
do	
	if [[ "$i == *access*"]]
the
	array+=("$i")
fi
done

for i in "${array[@]}"
do
        echo "$i"
done
