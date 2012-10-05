echo '<?xml version="1.0" encoding="UTF-8"?>
<SectionInput>
  <identifier>new_section</identifier>
  <name>New section</name>
</SectionInput>' | \
http -v POST ezpublish5.local/api/ezp/v2/content/sections/1 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Section+xml' \
'Content-Type:application/vnd.ez.api.SectionInput+xml' \
'X-HTTP-Method-Override:PATCH'
