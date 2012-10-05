echo '{
  "PolicyUpdate": {
    "limitations": {
      "limitation": [
        {
          "_identifier": "Class",
          "values": {
            "ref": [
              {
                "_href": "13"
              }
            ]
          }
        },
        {
          "_identifier": "ParentClass",
          "values": {
            "ref": [
              {
                "_href": "12"
              }
            ]
          }
        }
      ]
    }
  }
}' | \
http -v POST ezpublish5.local/api/ezp/v2/user/roles/5/policies/377 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Policy+json' \
'Content-Type:application/vnd.ez.api.PolicyUpdate+json' \
'X-HTTP-Method-Override:PATCH'
