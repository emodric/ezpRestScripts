echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateUpdate>
  <identifier>updated_state</identifier>
  <defaultLanguageCode>eng-US</defaultLanguageCode>
  <names>
    <value languageCode="eng-US">Updated state</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">Updated state description</value>
  </descriptions>
</ObjectStateUpdate>' | \
http -v POST localhost:8042/content/objectstategroups/2/objectstates/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectState+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateUpdate+xml' \
'X-HTTP-Method-Override:PATCH'