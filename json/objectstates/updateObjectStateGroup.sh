echo '{
  "ObjectStateGroupUpdate": {
    "identifier": "updated_state_group",
    "defaultLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated state group"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated state group description"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objectstategroups/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectStateGroup+json' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupUpdate+json' \
'X-HTTP-Method-Override:PATCH'
