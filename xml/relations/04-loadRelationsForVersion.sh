source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objects/58/versions/2/relations \
'Accept:application/ez.vnd.api.RelationList+xml'
