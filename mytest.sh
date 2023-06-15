#!/bin/bash
services="java bash"
for i in $services
do
	ps -C $i
	if [ $? -ne 0 ]
	then
		echo "service failed" | mail -s "service monitor" -c "anushareddy8994@gmail.com"
	fi
done

