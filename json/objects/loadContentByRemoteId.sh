source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects?remoteId=f8cc7a4cf8a964a1a0ea6666f5da7d0d \
'Accept:application/vnd.ez.api.ContentList+json' \
