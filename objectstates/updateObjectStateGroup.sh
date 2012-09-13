echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateGroupUpdate>
  <identifier>updated_state_group</identifier>
  <defaultLanguageCode>eng-US</defaultLanguageCode>
  <names>
    <value languageCode="eng-US">Updated state group</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">Updated state group description</value>
  </descriptions>
</ObjectStateGroupUpdate>' | \
http -v POST localhost:8042/content/objectstategroups/2 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectStateGroup+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
