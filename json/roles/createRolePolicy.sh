echo '{
  "PolicyCreate": {
    "module": "content",
    "function": "create",
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
http -v POST localhost:8042/user/roles/5/policies \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Policy+json' \
'Content-Type:application/vnd.ez.api.PolicyCreate+json'
