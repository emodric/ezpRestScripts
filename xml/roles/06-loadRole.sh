source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/roles/3 \
'Accept:application/vnd.ez.api.Role+xml'
