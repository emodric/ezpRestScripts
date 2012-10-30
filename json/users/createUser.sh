source ../../rest.cfg

echo '{
  "UserCreate": {
    "mainLanguageCode": "eng-GB",
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
          "languageCode": "eng-GB",
          "fieldValue": "Edi"
        },
        {
          "fieldDefinitionIdentifier": "last_name",
          "languageCode": "eng-GB",
          "fieldValue": "Modric"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5/13/users \
'Accept:application/vnd.ez.api.User+json' \
'Content-Type:application/vnd.ez.api.UserCreate+json'
