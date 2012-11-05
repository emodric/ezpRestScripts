source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentObjectStates>
 <ObjectState href="/content/objectstategroups/2/objectstates/2"/>
</ContentObjectStates>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objects/58/objectstates \
'Accept:application/vnd.ez.api.ContentObjectStates+xml' \
'Content-Type:application/vnd.ez.api.ContentObjectStates+xml' \
'X-HTTP-Method-Override:PATCH'
