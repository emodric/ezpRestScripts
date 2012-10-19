source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/groups/1/5/13/users \
'Accept:application/vnd.ez.api.UserList+xml'
