#!/bin/bash
while read task_status_flag; do
	tasks_status_array[$i]=$task_status_flag
	i=$(($i+1))
done < ./tasks_status

if [[ "${tasks_status_array[0]}" == "0" ]]; then

	if true; then #replace true
		tasks_status_array[0]=1
		echo -n > ./tasks_status
		for i in ${!tasks_status_array[@]}; do
			echo "${tasks_status_array[$i]}" >> ./tasks_status
		done
	fi
fi
