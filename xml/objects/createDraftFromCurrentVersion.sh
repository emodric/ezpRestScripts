source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/currentversion \
'X-HTTP-Method-Override:COPY' \
'Accept:application/vnd.ez.api.Version+xml'
