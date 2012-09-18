http -v POST localhost:8042/content/locations/1/43 \
'X-Test-User:14' \
'Destination:/unknown/resource/42' \
'X-HTTP-Method-Override:MOVE'
