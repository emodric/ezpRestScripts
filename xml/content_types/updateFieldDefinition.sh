echo '<?xml version="1.0" encoding="UTF-8"?>
<FieldDefinitionUpdate>
  <identifier>updated_name</identifier>
  <names>
    <value languageCode="eng-GB">Test</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">This is a test</value>
  </descriptions>
  <fieldGroup>content</fieldGroup>
  <position>10</position>
  <isTranslatable>true</isTranslatable>
  <isRequired>false</isRequired>
  <isInfoCollector>false</isInfoCollector>
  <isSearchable>true</isSearchable>
  <defaultValue>New test</defaultValue>
</FieldDefinitionUpdate>' | \
http -v POST localhost:8042/content/types/1/draft/fieldDefinitions/4 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.FieldDefinition+xml' \
'Content-Type:application/vnd.ez.api.FieldDefinitionUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
