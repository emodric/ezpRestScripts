source ../../rest.cfg

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
http --auth $username:$password -v POST $host/api/ezp/v2/user/roles/5 \
'Accept:application/vnd.ez.api.Role+json' \
'Content-Type:application/vnd.ez.api.RoleInput+json' \
'X-HTTP-Method-Override:PATCH'
