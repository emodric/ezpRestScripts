echo '{
  "ContentTypeUpdate": {
    "identifier": "updatedContentType",
    "mainLanguageCode": "eng-GB",
    "remoteId": "remoteId-qwert548",
    "urlAliasSchema": "<title>",
    "nameSchema": "<title>",
    "isContainer": "true",
    "defaultSortField": "PATH",
    "defaultSortOrder": "ASC",
    "defaultAlwaysAvailable": "true",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Updated Content Type"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "This is a description"
        }
      ]
    },
    "modificationDate": "2012-12-31T12:30:00",
    "User": {
      "_href": "/user/users/14"
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/types/1/draft \
'Accept:application/vnd.ez.api.ContentTypeInfo+json' \
'Content-Type:application/vnd.ez.api.ContentTypeUpdate+json' \
'X-HTTP-Method-Override:PATCH'
