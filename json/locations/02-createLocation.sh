source $(dirname "$0")/../../rest.cfg

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
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/locations \
'Accept:application/vnd.ez.api.Location+json' \
'Content-Type:application/vnd.ez.api.LocationCreate+json'
