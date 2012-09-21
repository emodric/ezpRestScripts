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
http -v POST localhost:8042/content/objects/41/versions/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Version+json' \
'Content-Type:application/vnd.ez.api.VersionUpdate+json' \
'X-HTTP-Method-Override:PATCH'
