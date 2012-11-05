source $(dirname "$0")/../../rest.cfg

echo '{
  "ContentUpdate": {
    "mainLanguageCode": "eng-GB",
    "Section": {
      "_href": "/content/sections/4"
    },
    "alwaysAvailable": "false",
    "remoteId": "remoteId123456789",
    "Owner": {
      "_href": "/user/users/10"
    },
    "modificationDate": "2012-09-30T12:30:00",
    "publishDate": "2012-09-30T13:30:00"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58 \
'Accept:application/vnd.ez.api.ContentInfo+json' \
'Content-Type:application/vnd.ez.api.ContentUpdate+json' \
'X-HTTP-Method-Override:PATCH'
