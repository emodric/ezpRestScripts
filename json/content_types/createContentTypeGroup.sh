echo '{
  "ContentTypeGroupInput": {
    "identifier": "new_type_group",
    "User": {
      "_href": "/user/users/13"
    },
    "modificationDate": "2012-12-31T12:00:00"
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/content/typegroups \
'Accept:application/vnd.ez.api.ContentTypeGroup+json' \
'Content-Type:application/vnd.ez.api.ContentTypeGroupInput+json'
