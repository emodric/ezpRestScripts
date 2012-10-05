echo '<?xml version="1.0" encoding="UTF-8"?>
<RelationCreate>
  <Destination href="/content/objects/70" />
</RelationCreate>' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects/60/versions/3/relations \
'Accept:application/vnd.ez.api.Relation+xml' \
'Content-Type:application/vnd.ez.api.RelationCreate+xml'
