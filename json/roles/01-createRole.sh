source $(dirname "$0")/../../rest.cfg

echo '{
  "RoleInput": {
    "identifier": "new_role",
    "mainLanguageCode": "eng-GB",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "New role"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "New role description"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/roles \
'Accept:application/vnd.ez.api.Role+json' \
'Content-Type:application/vnd.ez.api.RoleInput+json'
