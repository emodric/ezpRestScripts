source $(dirname "$0")/../../rest.cfg

echo '{
  "ObjectStateGroupUpdate": {
    "identifier": "updated_state_group",
    "defaultLanguageCode": "eng-GB",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Updated state group"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Updated state group description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups/2 \
'Accept:application/vnd.ez.api.ObjectStateGroup+json' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupUpdate+json' \
'X-HTTP-Method-Override:PATCH'
