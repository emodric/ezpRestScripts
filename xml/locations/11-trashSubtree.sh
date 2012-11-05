source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/locations/1/43 \
'Destination:/content/trash' \
'X-HTTP-Method-Override:MOVE'
