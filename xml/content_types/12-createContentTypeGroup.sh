source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<ContentTypeGroupInput>
  <identifier>new_type_group</identifier>
  <User href="/user/users/13" />
  <modificationDate>2012-12-31T12:00:00</modificationDate>
</ContentTypeGroupInput>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/typegroups \
'Accept:application/vnd.ez.api.ContentTypeGroup+xml' \
'Content-Type:application/vnd.ez.api.ContentTypeGroupInput+xml'
