source ../../rest.cfg

http --auth $username:$password -v PUBLISH $host/api/ezp/v2/content/objects/58/versions/3 \
'X-HTTP-Method-Override:PUBLISH'
