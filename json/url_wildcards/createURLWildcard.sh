echo '{
  "UrlWildcardCreate": {
    "sourceUrl": "/source/url/*",
    "destinationUrl": "/destination/url/{1}",
    "forward": "true"
  }
}' | \
http -v POST localhost:8042/content/urlwildcards \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.UrlWildcard+json' \
'Content-Type:application/vnd.ez.api.UrlWildcardCreate+json'
