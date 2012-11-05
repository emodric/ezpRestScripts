source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/58/versions/1 \
'Accept:application/vnd.ez.api.Version+xml'
