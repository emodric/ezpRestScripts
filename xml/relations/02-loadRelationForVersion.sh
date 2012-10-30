source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/58/versions/2/relations/6 \
'Accept:application/ez.vnd.api.Relation+xml'
