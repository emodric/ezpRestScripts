source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateGroupCreate>
  <identifier>new_state_group</identifier>
  <defaultLanguageCode>eng-GB</defaultLanguageCode>
  <names>
    <value languageCode="eng-GB">New state group</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">New state group description</value>
  </descriptions>
</ObjectStateGroupCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups \
'Accept:application/vnd.ez.api.ObjectStateGroup+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateGroupCreate+xml'
