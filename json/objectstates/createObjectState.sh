echo '{
  "ObjectStateCreate": {
    "identifier": "new_state",
    "priority": "4",
    "defaultLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state description"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objectstategroups/2/objectstates \
'Accept:application/vnd.ez.api.ObjectState+json' \
'Content-Type:application/vnd.ez.api.ObjectStateCreate+json'
