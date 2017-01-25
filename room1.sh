#!/usr/bin/env bash

#(curl fiware:1026/v2/updateContext -s -S --header 'Content-Type: application/json' \
#    --header 'Accept: application/json' -d @- | python -mjson.tool) @- <<EOF
#{
#  "id": "Room1",
#  "type": "Room",
#  "temperature": {
#    "value": 21,
#    "type": "Float"
#  },
#  "pressure": {
#    "value": 711,
#    "type": "Integer"
#  }
#}
#EOF
(curl fiware:1026/v2/entities -s -S --header 'Content-Type: application/json' -d @-) <<EOF
{
  "id": "Room1",
  "type": "Room",
  "temperature": {
    "value": 23,
    "type": "Float"
  },
  "pressure": {
    "value": 720,
    "type": "Integer"
  }
}
EOF