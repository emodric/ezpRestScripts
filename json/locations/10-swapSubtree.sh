source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/locations/1/2/72 \
'Destination:/content/locations/1/2/87' \
'X-HTTP-Method-Override:SWAP'
