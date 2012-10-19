source ../../rest.cfg

echo '{
  "UserGroupUpdate": {
    "mainLanguageCode": "eng-GB",
    "remoteId": "remote123456",
    "Section": {
      "_href": "/content/sections/1"
    },
    "fields": {
      "field": [
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "name",
          "languageCode": "eng-US",
          "fieldValue": "New group name"
        },
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "description",
          "languageCode": "eng-US",
          "fieldValue": "New group description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5 \
'Accept:application/vnd.ez.api.UserGroup+json' \
'Content-Type:application/vnd.ez.api.UserGroupUpdate+json' \
'X-HTTP-Method-Override:PATCH'
