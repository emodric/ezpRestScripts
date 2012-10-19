source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/58/versions/1/relations/1 \
'Accept:application/ez.vnd.api.Relation+json'
