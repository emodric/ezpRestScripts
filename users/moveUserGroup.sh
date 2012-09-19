http -v POST localhost:8042/user/groups/1/5/13 \
'X-Test-User:14' \
'Destination:/user/groups/1/5/44' \
'X-HTTP-Method-Override:MOVE'
