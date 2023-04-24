#!/bin/bash

displayLen=`yabai -m query --displays | jq length`


if [[ "$displayLen" == "1"  ]]; then 
  #reset space in main display
  yabai -m display --focus 1;
  for i in {1..20}; do yabai -m space --destroy; done
  for i in {1..15}; do yabai -m space --create; done

elif [[ "$displayLen" == "2"  ]]; then
  #reset space in two display
  yabai -m display --focus west;
  for i in {1..20}; do yabai -m space --destroy; done
  for i in {1..4}; do yabai -m space --create; done

  yabai -m display --focus east;
  for i in {1..20}; do yabai -m space --destroy; done
  for i in {1..9}; do yabai -m space --create; done

  yabai -m display --focus west;
  # open all application we initialize need

fi

exit 0
