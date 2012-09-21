echo '{
  "RoleAssignInput": {
    "Role": {
      "_href": "/user/roles/3",
      "_media-type": "application/vnd.ez.api.Role+json"
    },
    "limitation": {
      "_identifier": "Section",
      "values": {
        "ref": [
          {
            "_href": "1"
          },
          {
            "_href": "4"
          }
        ]
      }
    }
  }
}' | \
http -v POST localhost:8042/user/users/10/roles \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.RoleAssignmentList+json' \
'Content-Type:application/vnd.ez.api.RoleAssignInput+json'
