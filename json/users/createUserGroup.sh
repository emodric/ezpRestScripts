echo '{
  "UserGroupCreate": {
    "mainLanguageCode": "eng-US",
    "Section": {
      "_href": "/content/sections/1"
    },
    "remoteId": "remoteId12345678",
    "fields": {
      "field": [
        {
          "fieldDefinitionIdentifier": "name",
          "languageCode": "eng-US",
          "fieldValue": "User group name"
        },
        {
          "fieldDefinitionIdentifier": "description",
          "languageCode": "eng-US",
          "fieldValue": "User group description"
        }
      ]
    }
  }
}' | \
http -v POST localhost:8042/user/groups/1/5/subgroups \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.UserGroup+json' \
'Content-Type:application/vnd.ez.api.UserGroupCreate+json'
