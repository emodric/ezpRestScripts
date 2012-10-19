source ../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/user/groups/1/5/14/roles/5 \
'Accept:application/vnd.ez.api.RoleAssignmentList+json' \
