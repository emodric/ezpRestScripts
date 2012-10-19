source ../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/content/types/1/groups/2 \
'Accept:application/vnd.ez.api.ContentTypeGroupRefList+xml'
