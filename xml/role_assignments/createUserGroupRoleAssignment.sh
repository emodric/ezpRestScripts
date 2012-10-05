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
http -v POST ezpublish5.local/api/ezp/v2/user/groups/1/5/14/roles \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.RoleAssignmentList+xml' \
'Content-Type:application/vnd.ez.api.RoleAssignInput+xml'
