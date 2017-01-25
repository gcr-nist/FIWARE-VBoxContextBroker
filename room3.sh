#!/usr/bin/env bash

(curl localhost:1026/v1/updateContext -s -S --header 'Content-Type: application/json' \
    --header 'Accept: application/json' -d @- | python -mjson.tool ) <<EOF
{
    "contextElements": [
        {
            "type": "Room",
            "isPattern": "false",
            "id": "Room3",
            "attributes": [
                {
                    "name": "temperature",
                    "type": "float",
                    "value": "21"
                },
                {
                    "name": "pressure",
                    "type": "integer",
                    "value": "711"
                }
            ]
        }
    ],
    "updateAction": "APPEND"
}
EOF

(curl localhost:1026/v1/updateContext -s -S --header 'Content-Type: application/json' \
    --header 'Accept: application/json' -d @- | python -mjson.tool ) <<EOF
{
    "contextElements": [
        {
            "type": "Room",
            "isPattern": "false",
            "id": "Room2",
            "attributes": [
                {
                    "name": "temperature",
                    "type": "float",
                    "value": "21"
                },
                {
                    "name": "pressure",
                    "type": "integer",
                    "value": "711"
                }
            ]
        }
    ],
    "updateAction": "APPEND"
}
EOF

(curl localhost:1026/v1/updateContext -s -S --header 'Content-Type: application/json' \
    --header 'Accept: application/json' -d @- | python -mjson.tool ) <<EOF
{
    "contextElements": [
        {
            "type": "Room",
            "isPattern": "false",
            "id": "Room3",
            "attributes": [
                {
                    "name": "temperature",
                    "type": "float",
                    "value": "21"
                },
                {
                    "name": "pressure",
                    "type": "integer",
                    "value": "711"
                }
            ]
        }
    ],
    "updateAction": "APPEND"
}
EOF