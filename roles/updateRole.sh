echo '<?xml version="1.0" encoding="UTF-8"?>
<RoleInput>
  <identifier>updated_role</identifier>
  <mainLanguageCode>eng-US</mainLanguageCode>
  <names>
    <value languageCode="eng-US">Updated role</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">Updated role description</value>
  </descriptions>
</RoleInput>' | \
http -v POST localhost:8042/user/roles/5 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Role+xml' \
'Content-Type:application/vnd.ez.api.RoleInput+xml' \
'X-HTTP-Method-Override:PATCH'
