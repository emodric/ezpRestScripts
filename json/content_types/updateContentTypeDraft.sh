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
http -v POST localhost:8042/content/types/1/draft \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentTypeInfo+json' \
'Content-Type:application/vnd.ez.api.ContentTypeUpdate+json' \
'X-HTTP-Method-Override:PATCH'
