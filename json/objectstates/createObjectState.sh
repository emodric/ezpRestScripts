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
http -v POST localhost:8042/content/objectstategroups/2/objectstates \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectState+json' \
'Content-Type:application/vnd.ez.api.ObjectStateCreate+json'
