source $(dirname "$0")/../../rest.cfg

echo '{
  "ContentCreate": {
    "ContentType": {
      "_href": "/content/types/13"
    },
    "mainLanguageCode": "eng-GB",
    "LocationCreate": {
      "ParentLocation": {
        "_href": "/content/locations/1/5"
      },
      "priority": "0",
      "hidden": "false",
      "sortField": "PATH",
      "sortOrder": "ASC"
    },
    "Section": {
      "_href": "/content/sections/4"
    },
    "alwaysAvailable": "true",
    "remoteId": "remoteId12345678",
    "User": {
      "_href": "/user/users/10"
    },
    "modificationDate": "2012-09-30T12:30:00",
    "fields": {
      "field": [
        {
          "fieldDefinitionIdentifier": "subject",
          "languageCode": "eng-GB",
          "fieldValue": "Test comment"
        },
        {
          "fieldDefinitionIdentifier": "author",
          "languageCode": "eng-GB",
          "fieldValue": "Edi Modric"
        },
        {
          "fieldDefinitionIdentifier": "message",
          "languageCode": "eng-GB",
          "fieldValue": "This is a comment"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects \
'Accept:application/vnd.ez.api.Content+json' \
'Content-Type:application/vnd.ez.api.ContentCreate+json'
