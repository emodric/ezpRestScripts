echo '{
  "ObjectStateGroupCreate": {
    "identifier": "new_state_group",
    "defaultLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state group"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New state group description"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objectstategroups \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectStateGroup+json' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupCreate+json'
