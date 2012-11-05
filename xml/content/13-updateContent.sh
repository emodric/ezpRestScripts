source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentUpdate>
  <mainLanguageCode>eng-GB</mainLanguageCode>
  <Section href="/content/sections/4" />
  <alwaysAvailable>false</alwaysAvailable>
  <remoteId>remoteId123456789</remoteId>
  <Owner href="/user/users/10" />
  <modificationDate>2012-09-30T12:30:00</modificationDate>
  <publishDate>2012-09-30T13:30:00</publishDate>
</ContentUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58 \
'Accept:application/vnd.ez.api.ContentInfo+xml' \
'Content-Type:application/vnd.ez.api.ContentUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
