source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/roles/3/policies \
'Accept:application/vnd.ez.api.PolicyList+xml' \
