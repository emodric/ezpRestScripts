source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/sections/1 \
'Accept:application/vnd.ez.api.Section+xml' \
