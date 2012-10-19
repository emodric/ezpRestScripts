source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/locations?remoteId=f3e90596361e31d496d4026eb624c983 \
'Accept:application/vnd.ez.api.Location+xml' \
