echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentUpdate>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <Section href="/content/sections/4" />
  <alwaysAvailable>false</alwaysAvailable>
  <remoteId>remoteId12345678</remoteId>
  <Owner href="/user/users/10" />
  <modificationDate>2012-09-30T12:30:00</modificationDate>
  <publishDate>2012-09-30T13:30:00</publishDate>
</ContentUpdate>' | \
http -v POST localhost:8042/content/objects/58 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentInfo+xml' \
'Content-Type:application/vnd.ez.api.ContentUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
