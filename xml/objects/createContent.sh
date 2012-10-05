echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentCreate>
  <ContentType href="/content/types/13" />
  <mainLanguageCode>eng-US</mainLanguageCode>
  <LocationCreate>
    <ParentLocation href="/content/locations/1/5" />
    <priority>0</priority>
    <hidden>false</hidden>
    <sortField>PATH</sortField>
    <sortOrder>ASC</sortOrder>
  </LocationCreate>
  <Section href="/content/sections/4" />
  <alwaysAvailable>true</alwaysAvailable>
  <remoteId>remoteId12345678</remoteId>
  <User href="/user/users/10" />
  <modificationDate>2012-09-30T12:30:00</modificationDate>
  <fields>
    <field>
      <fieldDefinitionIdentifier>subject</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>Test comment</fieldValue>
    </field>
    <field>
      <fieldDefinitionIdentifier>author</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>Edi Modric</fieldValue>
    </field>
    <field>
      <fieldDefinitionIdentifier>message</fieldDefinitionIdentifier>
      <languageCode>eng-US</languageCode>
      <fieldValue>This is a comment</fieldValue>
    </field>
  </fields>
</ContentCreate>' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects \
'Accept:application/vnd.ez.api.Content+xml' \
'Content-Type:application/vnd.ez.api.ContentCreate+xml'
