echo '<?xml version="1.0" encoding="UTF-8"?>
<LocationUpdate>
  <priority>3</priority>
  <remoteId>remoteId-qwert999</remoteId>
  <sortField>CLASS_NAME</sortField>
  <sortOrder>DESC</sortOrder>
</LocationUpdate>' | \
http -v POST localhost:8042/content/locations/1/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Location+xml' \
'Content-Type:application/vnd.ez.api.LocationUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
