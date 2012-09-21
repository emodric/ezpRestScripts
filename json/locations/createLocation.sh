echo '{
  "LocationCreate": {
    "ParentLocation": {
      "_href": "/content/locations/1/5",
      "_media-type": "application/vnd.ez.api.Location+json"
    },
    "priority": "2",
    "hidden": "true",
    "remoteId": "remoteId12345678",
    "sortField": "PATH",
    "sortOrder": "ASC"
  }
}' | \
http -v POST localhost:8042/content/objects/58/locations \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Location+json' \
'Content-Type:application/vnd.ez.api.LocationCreate+json'
