source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/locations/1/5/children \
'Accept:application/vnd.ez.api.LocationList+json'
