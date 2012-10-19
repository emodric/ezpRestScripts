source ../../rest.cfg

http --auth $username:$password -v PUBLISH $host/api/ezp/v2/content/objects/58/versions/2 \
'X-HTTP-Method-Override:PUBLISH'
