source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/users/14/groups \
'Accept:application/vnd.ez.api.UserGroupRefList+xml' \
