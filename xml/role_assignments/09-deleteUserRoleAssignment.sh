source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/user/users/10/roles/3 \
'Accept:application/vnd.ez.api.RoleAssignmentList+xml'
