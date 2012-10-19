source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/types/1/groups?group=/content/typegroups/2 \
'Accept:application/vnd.ez.api.ContentTypeGroupRefList+xml' \
