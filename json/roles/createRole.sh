echo '{
  "RoleInput": {
    "identifier": "new_role",
    "mainLanguageCode": "eng-US",
    "names": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New role"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-US",
          "#text": "New role description"
        }
      ]
    }
  }
}' | \
http -v POST localhost:8042/user/roles \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Role+json' \
'Content-Type:application/vnd.ez.api.RoleInput+json'
