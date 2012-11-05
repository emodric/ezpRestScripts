source $(dirname "$0")/../../rest.cfg

echo '{
  "LocationUpdate": {
    "priority": "3",
    "remoteId": "remoteId-qwert999",
    "hidden": "true",
    "sortField": "CLASS_NAME",
    "sortOrder": "DESC"
  }
}' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/locations/1/2 \
'Accept:application/vnd.ez.api.Location+json' \
'Content-Type:application/vnd.ez.api.LocationUpdate+json' \
'X-HTTP-Method-Override:PATCH'
