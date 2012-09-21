http -v POST localhost:8042/content/trash/86 \
'X-Test-User:14' \
'X-HTTP-Method-Override:MOVE' \
'Destination:/content/locations/1/43'
