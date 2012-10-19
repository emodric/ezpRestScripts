source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/users/10/roles/3 \
'Accept:application/vnd.ez.api.RoleAssignment+json' \
