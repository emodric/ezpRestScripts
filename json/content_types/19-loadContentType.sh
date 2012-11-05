source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/types/1 \
'Accept:application/vnd.ez.api.ContentType+json'
