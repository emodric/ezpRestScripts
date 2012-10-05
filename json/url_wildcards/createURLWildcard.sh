echo '{
  "UrlWildcardCreate": {
    "sourceUrl": "/source/url/*",
    "destinationUrl": "/destination/url/{1}",
    "forward": "true"
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/urlwildcards \
'Accept:application/vnd.ez.api.UrlWildcard+json' \
'Content-Type:application/vnd.ez.api.UrlWildcardCreate+json'
