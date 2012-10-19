source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/trash/86 \
'X-HTTP-Method-Override:MOVE' \
'Destination:/content/locations/1/43'
