source ../../rest.cfg

echo '{
  "ContentTypeCreate": {
    "identifier": "newContentTypeWithPublish",
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
          "#text": "New Content Type"
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
    },
    "FieldDefinitions": {
      "FieldDefinition": [
        {
          "identifier": "title",
          "fieldType": "ezstring",
          "names": {
            "value": [
              {
                "_languageCode": "eng-GB",
                "#text": "Title"
              }
            ]
          },
          "descriptions": {
            "value": [
              {
                "_languageCode": "eng-GB",
                "#text": "This is the title"
              }
            ]
          },
          "fieldGroup": "content",
          "position": "1",
          "isTranslatable": "true",
          "isRequired": "true",
          "isInfoCollector": "false",
          "isSearchable": "true",
          "defaultValue": "New Title"
        },
        {
          "identifier": "summary",
          "fieldType": "eztext",
          "names": {
            "value": [
              {
                "_languageCode": "eng-GB",
                "#text": "Summary"
              }
            ]
          },
          "descriptions": {
            "value": [
              {
                "_languageCode": "eng-GB",
                "#text": "This is the summary"
              }
            ]
          },
          "fieldGroup": "content",
          "position": "2",
          "isTranslatable": "true",
          "isRequired": "false",
          "isInfoCollector": "false",
          "isSearchable": "true"
        }
      ]
    }
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/typegroups/1/types?publish=true \
'Accept:application/vnd.ez.api.ContentType+json' \
'Content-Type:application/vnd.ez.api.ContentTypeCreate+json'
