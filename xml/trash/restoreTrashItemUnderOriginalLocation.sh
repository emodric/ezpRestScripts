source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/trash/72 \
'X-HTTP-Method-Override:MOVE'
