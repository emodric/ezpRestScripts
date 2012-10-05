echo '<?xml version="1.0" encoding="UTF-8"?>
<RoleInput>
  <identifier>new_role</identifier>
  <mainLanguageCode>eng-US</mainLanguageCode>
  <names>
    <value languageCode="eng-US">New role</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">New role description</value>
  </descriptions>
</RoleInput>' | \
http -v POST ezpublish5.local/api/ezp/v2/user/roles \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Role+xml' \
'Content-Type:application/vnd.ez.api.RoleInput+xml'
