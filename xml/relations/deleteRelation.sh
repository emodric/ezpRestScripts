source ../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/content/objects/60/versions/2/relations/8 \
