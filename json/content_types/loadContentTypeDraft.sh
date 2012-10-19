source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/types/1/draft \
'Accept:application/vnd.ez.api.ContentType+json' \
