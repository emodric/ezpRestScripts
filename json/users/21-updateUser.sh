source $(dirname "$0")/../../rest.cfg

echo '{
  "UserUpdate": {
    "mainLanguageCode": "eng-GB",
    "remoteId": "remote1234567",
    "Section": {
      "_href": "/content/sections/1"
    },
    "fields": {
      "field": [
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "first_name",
          "languageCode": "eng-GB",
          "fieldValue": "Updated first name"
        },
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "last_name",
          "languageCode": "eng-GB",
          "fieldValue": "Updated last name"
        }
      ]
    },
    "email": "updated.email@local.com",
    "password": "updatedPassword",
    "enabled": "false"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/users/10 \
'Accept:application/vnd.ez.api.User+json' \
'Content-Type:application/vnd.ez.api.UserUpdate+json' \
'X-HTTP-Method-Override:PATCH'
