echo '{
  "FieldDefinitionCreate": {
    "identifier": "test_def",
    "fieldType": "ezstring",
    "names": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "Test"
        }
      ]
    },
    "descriptions": {
      "value": [
        {
          "_languageCode": "eng-GB",
          "#text": "This is a test"
        }
      ]
    },
    "fieldGroup": "content",
    "position": "10",
    "isTranslatable": "true",
    "isRequired": "false",
    "isInfoCollector": "false",
    "isSearchable": "true",
    "defaultValue": "New test"
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/types/1/draft/fieldDefinitions \
'Accept:application/vnd.ez.api.FieldDefinition+json' \
'Content-Type:application/vnd.ez.api.FieldDefinitionCreate+json'
