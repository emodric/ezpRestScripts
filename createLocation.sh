echo '<?xml version="1.0" encoding="UTF-8"?>
<LocationCreate media-type="application/vnd.ez.api.LocationCreate+xml">
    <ParentLocation href="/content/locations/1/5" media-type="application/vnd.ez.api.Location+xml"/>
    <priority>0</priority>
    <hidden>false</hidden>
    <sortField>PATH</sortField>
    <sortOrder>ASC</sortOrder>
</LocationCreate>' | \
http -v POST localhost:8042/content/objects/58/locations \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Location+xml' \
'Content-Type:application/vnd.ez.api.LocationCreate+xml'
