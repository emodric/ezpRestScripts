source $(dirname "$0")/../../rest.cfg

echo '{
  "SectionInput": {
    "identifier": "new_section",
    "name": "New section"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/sections \
'Accept:application/vnd.ez.api.Section+json' \
'Content-Type:application/vnd.ez.api.SectionInput+json'
