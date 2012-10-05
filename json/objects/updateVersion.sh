echo '{
  "VersionUpdate": {
    "initialLanguageCode": "eng-GB",
    "fields": {
      "field": [
        {
          "id": "1234",
          "fieldDefinitionIdentifier": "name",
          "languageCode": "eng-GB",
          "fieldValue": "New folder name"
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects/41/versions/2 \
'Accept:application/vnd.ez.api.Version+json' \
'Content-Type:application/vnd.ez.api.VersionUpdate+json' \
'X-HTTP-Method-Override:PATCH'
