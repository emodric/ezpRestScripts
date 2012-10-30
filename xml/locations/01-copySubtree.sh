source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/locations/1/43 \
'Destination:/content/locations/1/2' \
'X-HTTP-Method-Override:COPY'
