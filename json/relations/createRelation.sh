echo '{
  "RelationCreate": {
    "Destination": {
      "_href": "/content/objects/70"
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects/60/versions/3/relations \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Relation+json' \
'Content-Type:application/vnd.ez.api.RelationCreate+json'
