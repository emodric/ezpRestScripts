source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/roles?identifier=anonymous \
'Accept:application/vnd.ez.api.RoleList+xml' \
