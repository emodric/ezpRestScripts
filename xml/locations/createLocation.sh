echo '<?xml version="1.0" encoding="UTF-8"?>
<LocationCreate>
    <ParentLocation href="/content/locations/1/5" media-type="application/vnd.ez.api.Location+xml"/>
    <priority>2</priority>
    <hidden>true</hidden>
    <remoteId>remoteId12345678</remoteId>
    <sortField>PATH</sortField>
    <sortOrder>ASC</sortOrder>
</LocationCreate>' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objects/58/locations \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Location+xml' \
'Content-Type:application/vnd.ez.api.LocationCreate+xml'
