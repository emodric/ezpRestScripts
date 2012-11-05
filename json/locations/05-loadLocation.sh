source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/locations/1/2 \
'Accept:application/vnd.ez.api.Location+json'
