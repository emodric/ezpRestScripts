source ../../rest.cfg

echo '{
  "UrlWildcardCreate": {
    "sourceUrl": "/source/url/*",
    "destinationUrl": "/destination/url/{1}",
    "forward": "true"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/urlwildcards \
'Accept:application/vnd.ez.api.UrlWildcard+json' \
'Content-Type:application/vnd.ez.api.UrlWildcardCreate+json'
