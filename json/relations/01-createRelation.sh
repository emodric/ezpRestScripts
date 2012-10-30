source ../../rest.cfg

echo '{
  "RelationCreate": {
    "Destination": {
      "_href": "/content/objects/70"
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/versions/2/relations \
'Accept:application/vnd.ez.api.Relation+json' \
'Content-Type:application/vnd.ez.api.RelationCreate+json'
