echo '{
  "ContentObjectStates": {
    "ObjectState": [
      {
        "_href": "/content/objectstategroups/2/objectstates/2"
      }
    ]
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects/58/objectstates \
'Accept:application/vnd.ez.api.ContentObjectStates+json' \
'Content-Type:application/vnd.ez.api.ContentObjectStates+json' \
'X-HTTP-Method-Override:PATCH'
