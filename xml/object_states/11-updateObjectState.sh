source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateUpdate>
  <identifier>updated_state</identifier>
  <defaultLanguageCode>eng-GB</defaultLanguageCode>
  <names>
    <value languageCode="eng-GB">Updated state</value>
  </names>
  <descriptions>
    <value languageCode="eng-GB">Updated state description</value>
  </descriptions>
</ObjectStateUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/objectstategroups/2/objectstates/2 \
'Accept:application/vnd.ez.api.ObjectState+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
