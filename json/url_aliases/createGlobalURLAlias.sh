source ../../rest.cfg

echo '{
  "UrlAliasCreate": {
    "_type": "RESOURCE",
    "resource": "module:/content/search",
    "path": "/some/other/path",
    "languageCode": "eng-GB",
    "alwaysAvailable": "false",
    "forward": "true"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/urlaliases \
'Accept:application/vnd.ez.api.UrlAlias+json' \
'Content-Type:application/vnd.ez.api.UrlAliasCreate+json'
