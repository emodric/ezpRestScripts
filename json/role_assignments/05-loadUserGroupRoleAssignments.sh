source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/groups/1/5/14/roles \
'Accept:application/vnd.ez.api.RoleAssignmentList+json'
