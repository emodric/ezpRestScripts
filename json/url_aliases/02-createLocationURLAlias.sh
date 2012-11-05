source $(dirname "$0")/../../rest.cfg

echo '{
  "UrlAliasCreate": {
    "_type": "LOCATION",
    "location": {
      "_href": "/content/locations/1/5"
    },
    "path": "/some/path",
    "languageCode": "eng-GB",
    "alwaysAvailable": "false",
    "forward": "true"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/urlaliases \
'Accept:application/vnd.ez.api.UrlAlias+json' \
'Content-Type:application/vnd.ez.api.UrlAliasCreate+json'
