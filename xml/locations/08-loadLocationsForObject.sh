source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/58/locations \
'Accept:application/vnd.ez.api.LocationList+xml'
