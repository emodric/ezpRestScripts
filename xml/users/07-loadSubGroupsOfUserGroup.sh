source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/groups/1/5/subgroups \
'Accept:application/vnd.ez.api.UserGroupList+xml'
