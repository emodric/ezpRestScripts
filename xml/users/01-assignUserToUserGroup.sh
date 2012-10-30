source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/user/users/14/groups?group=/1/5/44 \
'Accept:application/vnd.ez.api.UserGroupRefList+xml'
