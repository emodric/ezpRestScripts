echo '<?xml version="1.0" encoding="UTF-8"?>
<UserCreate>
  <mainLanguageCode>eng-US</mainLanguageCode>
  <Section href="/content/sections/1" />
  <remoteId>remoteId12345678</remoteId>
  <login>edi.modric</login>
  <email>edi@local.com</email>
  <password>42</password>
  <enabled>true</enabled>
  <fields>
    <field>
      <fieldDefinitionIdentifier>first_name</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>Edi</fieldValue>
    </field>
    <field>
      <fieldDefinitionIdentifier>last_name</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>Modric</fieldValue>
    </field>
  </fields>
</UserCreate>' | \
http -v POST ezpublish5.local/api/ezp/v2/user/groups/1/5/13/users \
'Accept:application/vnd.ez.api.User+xml' \
'Content-Type:application/vnd.ez.api.UserCreate+xml'
