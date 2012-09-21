echo '{
  "SectionInput": {
    "identifier": "updated_section",
    "name": "Updated section"
  }
}' | \
http -v POST localhost:8042/content/sections/1 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Section+json' \
'Content-Type:application/vnd.ez.api.SectionInput+json' \
'X-HTTP-Method-Override:PATCH'
