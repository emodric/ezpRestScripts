echo '{
  "LocationUpdate": {
    "priority": "3",
    "remoteId": "remoteId-qwert999",
    "hidden": "true",
    "sortField": "CLASS_NAME",
    "sortOrder": "DESC"
  }
}' | \
http -v POST localhost:8042/content/locations/1/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Location+json' \
'Content-Type:application/vnd.ez.api.LocationUpdate+json' \
'X-HTTP-Method-Override:PATCH'
