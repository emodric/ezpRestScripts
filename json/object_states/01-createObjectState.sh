source $(dirname "$0")/../../rest.cfg

echo '{
  "ObjectStateCreate": {
    "identifier": "new_state",
    "priority": "4",
    "defaultLanguageCode": "eng-GB",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "New state"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "New state description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups/2/objectstates \
'Accept:application/vnd.ez.api.ObjectState+json' \
'Content-Type:application/vnd.ez.api.ObjectStateCreate+json'
