source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/trash/51 \
'X-HTTP-Method-Override:MOVE' \
'Destination:/content/locations/1/2'
