source $(dirname "$0")/../../rest.cfg

echo '{
  "ObjectStateUpdate": {
    "identifier": "updated_state",
    "defaultLanguageCode": "eng-GB",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Updated state"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Updated state description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups/2/objectstates/2 \
'Accept:application/vnd.ez.api.ObjectState+json' \
'Content-Type:application/vnd.ez.api.ObjectStateUpdate+json' \
'X-HTTP-Method-Override:PATCH'
