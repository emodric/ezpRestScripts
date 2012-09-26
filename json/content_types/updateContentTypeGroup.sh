echo '{
  "ContentTypeGroupInput": {
    "identifier": "updated_type_group",
    "User": {
      "_href": "/user/users/13"
    },
    "modificationDate": "2012-12-31T12:00:00"
  }
}' | \
http -v POST localhost:8042/content/typegroups/1 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.ContentTypeGroup+json' \
'Content-Type:application/vnd.ez.api.ContentTypeGroupInput+json' \
'X-HTTP-Method-Override:PATCH'
