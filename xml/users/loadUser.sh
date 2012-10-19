source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/users/14 \
'Accept:application/vnd.ez.api.User+xml'
