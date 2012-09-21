echo '{
  "RoleInput": {
    "identifier": "updated_role",
    "mainLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated role"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "Updated role description"
        }
      ]
    }
  }
}' | \
http -v POST localhost:8042/user/roles/5 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Role+json' \
'Content-Type:application/vnd.ez.api.RoleInput+json' \
'X-HTTP-Method-Override:PATCH'
