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
http -v POST localhost:8042/user/groups/1/5 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.UserGroup+json' \
'Content-Type:application/vnd.ez.api.UserGroupUpdate+json' \
'X-HTTP-Method-Override:PATCH'
