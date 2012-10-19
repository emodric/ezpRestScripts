source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UserGroupCreate>
  <mainLanguageCode>eng-US</mainLanguageCode>
  <Section href="/content/sections/1" />
  <remoteId>remoteId12345678</remoteId>
  <fields>
    <field>
      <fieldDefinitionIdentifier>name</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>User group name</fieldValue>
    </field>
    <field>
      <fieldDefinitionIdentifier>description</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>User group description</fieldValue>
    </field>
  </fields>
</UserGroupCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5/subgroups \
'Accept:application/vnd.ez.api.UserGroup+xml' \
'Content-Type:application/vnd.ez.api.UserGroupCreate+xml'
