source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/groups/1/5/14/roles/3 \
'Accept:application/vnd.ez.api.RoleAssignment+xml'
