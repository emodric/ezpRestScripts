source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentTypeUpdate>
  <identifier>updatedContentType</identifier>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <remoteId>remoteId-qwert548</remoteId>
  <urlAliasSchema>&lt;title&gt;</urlAliasSchema>
  <nameSchema>&lt;title&gt;</nameSchema>
  <isContainer>true</isContainer>
  <defaultSortField>PATH</defaultSortField>
  <defaultSortOrder>ASC</defaultSortOrder>
  <defaultAlwaysAvailable>true</defaultAlwaysAvailable>
  <names>
    <value languageCode="eng-GB">Updated Content Type</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">This is a description</value>
  </descriptions>
  <modificationDate>2012-12-31T12:30:00</modificationDate>
  <User href="/user/users/14" />
</ContentTypeUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/types/1 \
'Accept:application/vnd.ez.api.ContentTypeInfo+xml' \
'Content-Type:application/vnd.ez.api.ContentTypeUpdate+xml'
