source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UserGroupUpdate>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <remoteId>remote123456</remoteId>
  <Section href="/content/sections/1" />
  <fields>
    <field>
      <id>1234</id>
      <fieldDefinitionIdentifier>name</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>New group name</fieldValue>
    </field>
    <field>
      <id>1234</id>
      <fieldDefinitionIdentifier>description</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>New group description</fieldValue>
    </field>
  </fields>
</UserGroupUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/groups/1/5 \
'Accept:application/vnd.ez.api.UserGroup+xml' \
'Content-Type:application/vnd.ez.api.UserGroupUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
