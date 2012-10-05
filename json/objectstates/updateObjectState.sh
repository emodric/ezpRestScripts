echo '{
  "ObjectStateUpdate": {
    "identifier": "updated_state",
    "defaultLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated state"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated state description"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objectstategroups/2/objectstates/2 \
'Accept:application/vnd.ez.api.ObjectState+json' \
'Content-Type:application/vnd.ez.api.ObjectStateUpdate+json' \
'X-HTTP-Method-Override:PATCH'
