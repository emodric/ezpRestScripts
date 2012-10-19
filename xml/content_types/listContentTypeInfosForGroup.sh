source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/typegroups/2/types \
'Accept:application/vnd.ez.api.ContentTypeInfoList+xml' \
