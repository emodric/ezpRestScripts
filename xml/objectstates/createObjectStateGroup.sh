echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateGroupCreate>
  <identifier>new_state_group</identifier>
  <defaultLanguageCode>eng-US</defaultLanguageCode>
  <names>
    <value languageCode="eng-US">New state group</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">New state group description</value>
  </descriptions>
</ObjectStateGroupCreate>' | \
http -v POST localhost:8042/content/objectstategroups \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ObjectStateGroup+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupCreate+xml'
