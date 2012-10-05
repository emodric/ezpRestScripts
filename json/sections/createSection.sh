echo '{
  "SectionInput": {
    "identifier": "new_section",
    "name": "New section"
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/sections \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Section+json' \
'Content-Type:application/vnd.ez.api.SectionInput+json'
