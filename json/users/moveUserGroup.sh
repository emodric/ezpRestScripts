source ../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5/13 \
'Destination:/user/groups/1/5/44' \
'X-HTTP-Method-Override:MOVE'
