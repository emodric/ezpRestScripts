source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<SectionInput>
  <identifier>new_section</identifier>
  <name>New section</name>
</SectionInput>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/sections/1 \
'Accept:application/vnd.ez.api.Section+xml' \
'Content-Type:application/vnd.ez.api.SectionInput+xml' \
'X-HTTP-Method-Override:PATCH'
