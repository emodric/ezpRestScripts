source ../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/user/users/14/groups/14 \
'Accept:application/vnd.ez.api.UserGroupRefList+xml'
