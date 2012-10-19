source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/policies?userId=10 \
'Accept:application/vnd.ez.api.PolicyList+json' \
