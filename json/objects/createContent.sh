echo '{
  "ContentCreate": {
    "ContentType": {
      "_href": "/content/types/13"
    },
    "mainLanguageCode": "eng-US",
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
          "languageCode": "eng-US",
          "fieldValue": "Test comment"
        },
        {
          "fieldDefinitionIdentifier": "author",
          "languageCode": "eng-US",
          "fieldValue": "Edi Modric"
        },
        {
          "fieldDefinitionIdentifier": "message",
          "languageCode": "eng-US",
          "fieldValue": "This is a comment"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Content+json' \
'Content-Type:application/vnd.ez.api.ContentCreate+json'
