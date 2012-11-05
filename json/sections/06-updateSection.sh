source $(dirname "$0")/../../rest.cfg

echo '{
  "SectionInput": {
    "identifier": "updated_section",
    "name": "Updated section"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/sections/2 \
'Accept:application/vnd.ez.api.Section+json' \
'Content-Type:application/vnd.ez.api.SectionInput+json' \
'X-HTTP-Method-Override:PATCH'
