source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<RoleAssignInput>
  <Role href="/user/roles/3" media-type="application/vnd.ez.api.Role+xml"/>
  <limitation identifier="Section">
      <values>
          <ref href="1" />
          <ref href="4" />
      </values>
  </limitation>
</RoleAssignInput>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/users/10/roles \
'Accept:application/vnd.ez.api.RoleAssignmentList+xml' \
'Content-Type:application/vnd.ez.api.RoleAssignInput+xml'
