source ../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/ \
'Accept:application/vnd.ez.api.Root+json'
