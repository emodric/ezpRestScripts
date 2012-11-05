source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UserGroupCreate>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <Section href="/content/sections/1" />
  <remoteId>remoteId12345678</remoteId>
  <fields>
    <field>
      <fieldDefinitionIdentifier>name</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>User group name</fieldValue>
    </field>
    <field>
      <fieldDefinitionIdentifier>description</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>User group description</fieldValue>
    </field>
  </fields>
</UserGroupCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5/subgroups \
'Accept:application/vnd.ez.api.UserGroup+xml' \
'Content-Type:application/vnd.ez.api.UserGroupCreate+xml'
