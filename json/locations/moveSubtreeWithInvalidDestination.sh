source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/locations/1/43 \
'Destination:/unknown/resource/42' \
'X-HTTP-Method-Override:MOVE'
