source ../../rest.cfg

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
http --auth $username:$password -v POST $host/api/ezp/v2/user/roles/3/policies/359 \
'Accept:application/vnd.ez.api.Policy+json' \
'Content-Type:application/vnd.ez.api.PolicyUpdate+json' \
'X-HTTP-Method-Override:PATCH'
