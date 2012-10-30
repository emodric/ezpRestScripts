source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/trash/43 \
'X-HTTP-Method-Override:MOVE'
