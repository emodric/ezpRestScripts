echo '{
  "UserCreate": {
    "mainLanguageCode": "eng-US",
    "Section": {
      "_href": "/content/sections/1"
    },
    "remoteId": "remoteId12345678",
    "login": "edi.modric",
    "email": "edi@local.com",
    "password": "42",
    "enabled": "true",
    "fields": {
      "field": [
        {
          "fieldDefinitionIdentifier": "first_name",
          "languageCode": "eng-US",
          "fieldValue": "Edi"
        },
        {
          "fieldDefinitionIdentifier": "last_name",
          "languageCode": "eng-US",
          "fieldValue": "Modric"
        }
      ]
    }
  }
}' | \
http -v POST localhost:8042/user/groups/1/5/13/users \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.User+json' \
'Content-Type:application/vnd.ez.api.UserCreate+json'
