echo '<?xml version="1.0" encoding="UTF-8"?>
<ObjectStateCreate>
  <identifier>new_state</identifier>
  <priority>4</priority>
  <defaultLanguageCode>eng-US</defaultLanguageCode>
  <names>
    <value languageCode="eng-US">New state</value>
  </names>
  <descriptions>
    <value languageCode="eng-US">New state description</value>
  </descriptions>
</ObjectStateCreate>' | \
http -v POST ezpublish5.local/api/ezp/v2/content/objectstategroups/2/objectstates \
'Accept:application/vnd.ez.api.ObjectState+xml' \
'Content-Type:application/vnd.ez.api.ObjectStateCreate+xml'
