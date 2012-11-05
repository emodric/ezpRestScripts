source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/types/1/draft \
'Accept:application/vnd.ez.api.ContentType+json' \
'X-HTTP-Method-Override:PUBLISH'
