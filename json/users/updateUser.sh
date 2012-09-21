echo '{
  "UserUpdate": {
    "mainLanguageCode": "eng-GB",
    "remoteId": "remote123456",
    "Section": {
      "_href": "/content/sections/1"
    },
    "fields": {
      "field": [
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "first_name",
          "languageCode": "eng-US",
          "fieldValue": "Updated first name"
        },
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "last_name",
          "languageCode": "eng-US",
          "fieldValue": "Updated last name"
        }
      ]
    },
    "email": "updated.email@local.com",
    "password": "updatedPassword",
    "enabled": "false"
  }
}' | \
http -v POST localhost:8042/user/users/10 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.User+json' \
'Content-Type:application/vnd.ez.api.UserUpdate+json' \
'X-HTTP-Method-Override:PATCH'
