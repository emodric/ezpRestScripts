source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/60/versions/6/relations/64 \
'Accept:application/ez.vnd.api.Relation+xml'
