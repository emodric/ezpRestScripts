echo '<?xml version="1.0" encoding="UTF-8"?>
<SectionInput>
  <identifier>new_section</identifier>
  <name>New section</name>
</SectionInput>' | \
http -v POST localhost:8042/content/sections \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Section+xml' \
'Content-Type:application/vnd.ez.api.SectionInput+xml'
