http -v POST localhost:8042/content/locations/1/43 \
'X-Test-User:14' \
'Destination:/content/trash' \
'X-HTTP-Method-Override:MOVE'
