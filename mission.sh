#!/bin/bash

missionList=/Users/david/www/dev_environment/mission.json

appLen=`cat $missionList | jq length`

for (( i=0; i < $appLen ; i++ ))
do
	appName=`cat $missionList | jq -r ".[$i] | .app"`
	appArgs=`cat $missionList | jq -r ".[$i] | .args"`
	
	if [[ "$appArgs" == null  ]]; then
		open -na "$appName"
	else
		open -na "$appName" --args $appArgs
	fi

done

exit 0;
