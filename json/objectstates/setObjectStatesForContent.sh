echo '{
  "ContentObjectStates": {
    "ObjectState": [
      {
        "_href": "/content/objectstategroups/2/objectstates/2"
      }
    ]
  }
}' | \
http -v POST localhost:8042/content/objects/58/objectstates \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentObjectStates+json' \
'Content-Type:application/vnd.ez.api.ContentObjectStates+json' \
'X-HTTP-Method-Override:PATCH'
