source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<RelationCreate>
  <Destination href="/content/objects/70" />
</RelationCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/versions/2/relations \
'Accept:application/vnd.ez.api.Relation+xml' \
'Content-Type:application/vnd.ez.api.RelationCreate+xml'
