echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentTypeCreate>
  <identifier>newContentTypeWithPublish</identifier>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <remoteId>remoteId-qwert548</remoteId>
  <urlAliasSchema>&lt;title&gt;</urlAliasSchema>
  <nameSchema>&lt;title&gt;</nameSchema>
  <isContainer>true</isContainer>
  <defaultSortField>PATH</defaultSortField>
  <defaultSortOrder>ASC</defaultSortOrder>
  <defaultAlwaysAvailable>true</defaultAlwaysAvailable>
  <names>
    <value languageCode="eng-GB">New Content Type</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">This is a description</value>
  </descriptions>
  <modificationDate>2012-12-31T12:30:00</modificationDate>
  <User href="/user/users/14" />
  <FieldDefinitions>
    <FieldDefinition>
      <identifier>title</identifier>
      <fieldType>ezstring</fieldType>
      <names>
        <value languageCode="eng-GB">Title</value>
      </names>
      <descriptions>
        <value languageCode="eng-GB">This is the title</value>
      </descriptions>
      <fieldGroup>content</fieldGroup>
      <position>1</position>
      <isTranslatable>true</isTranslatable>
      <isRequired>true</isRequired>
      <isInfoCollector>false</isInfoCollector>
      <isSearchable>true</isSearchable>
      <defaultValue>New Title</defaultValue>
    </FieldDefinition>
   <FieldDefinition>
      <identifier>summary</identifier>
      <fieldType>eztext</fieldType>
      <names>
        <value languageCode="eng-GB">Summary</value>
      </names>
      <descriptions>
        <value languageCode="eng-GB">This is the summary</value>
      </descriptions>
      <fieldGroup>content</fieldGroup>
      <position>2</position>
      <isTranslatable>true</isTranslatable>
      <isRequired>false</isRequired>
      <isInfoCollector>false</isInfoCollector>
      <isSearchable>true</isSearchable>
      <defaultValue></defaultValue>
    </FieldDefinition>
   </FieldDefinitions>
</ContentTypeCreate>' | \
http -v POST localhost:8042/content/typegroups/1/types?publish=true \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentType+xml' \
'Content-Type:application/vnd.ez.api.ContentTypeCreate+xml'
