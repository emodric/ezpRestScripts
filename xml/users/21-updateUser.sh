source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UserUpdate>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <remoteId>remote1234567</remoteId>
  <Section href="/content/sections/1" />
  <fields>
    <field>
      <id>1234</id>
      <fieldDefinitionIdentifier>first_name</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>Updated first name</fieldValue>
    </field>
    <field>
      <id>1234</id>
      <fieldDefinitionIdentifier>last_name</fieldDefinitionIdentifier>
      <languageCode>eng-GB</languageCode>
      <fieldValue>Updated last name</fieldValue>
    </field>
  </fields>
  <email>updated.email@local.com</email>
  <password>updatedPassword</password>
  <enabled>false</enabled>
</UserUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/users/10 \
'Accept:application/vnd.ez.api.User+xml' \
'Content-Type:application/vnd.ez.api.UserUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
