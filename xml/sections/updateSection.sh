source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<SectionInput>
  <identifier>updated_section</identifier>
  <name>Updated section</name>
</SectionInput>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/sections/2 \
'Accept:application/vnd.ez.api.Section+xml' \
'Content-Type:application/vnd.ez.api.SectionInput+xml' \
'X-HTTP-Method-Override:PATCH'
