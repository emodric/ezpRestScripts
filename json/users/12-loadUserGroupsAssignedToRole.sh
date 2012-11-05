source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/groups?roleId=/user/roles/2 \
'Accept:application/vnd.ez.api.UserGroupList+json'
