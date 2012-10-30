source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateCreate>
  <identifier>new_state</identifier>
  <priority>4</priority>
  <defaultLanguageCode>eng-GB</defaultLanguageCode>
  <names>
    <value languageCode="eng-GB">New state</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">New state description</value>
  </descriptions>
</ObjectStateCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups/2/objectstates \
'Accept:application/vnd.ez.api.ObjectState+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateCreate+xml'
