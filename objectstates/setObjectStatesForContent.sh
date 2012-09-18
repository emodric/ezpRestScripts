echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentObjectStates>
 <ObjectState href="/content/objectstategroups/2/objectstates/2"/>
</ContentObjectStates>' | \
http -v POST localhost:8042/content/objects/58/objectstates \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentObjectStates+xml' \
'Content-Type:application/vnd.ez.api.ContentObjectStates+xml' \
'X-HTTP-Method-Override:PATCH'
