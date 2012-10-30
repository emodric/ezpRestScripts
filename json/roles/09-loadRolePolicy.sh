source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/roles/3/policies/359 \
'Accept:application/vnd.ez.api.Policy+json'
