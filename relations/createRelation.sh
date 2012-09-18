echo '<?xml version="1.0" encoding="UTF-8"?>
<RelationCreate>
  <Destination href="/content/objects/70" />
</RelationCreate>' | \
http -v POST localhost:8042/content/objects/60/versions/3/relations \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Relation+xml' \
'Content-Type:application/vnd.ez.api.RelationCreate+xml'
