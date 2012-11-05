source $(dirname "$0")/../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<PolicyUpdate>
  <limitations>
    <limitation identifier="Class">
      <values>
        <ref href="13"/>
      </values>
    </limitation>
    <limitation identifier="ParentClass">
      <values>
        <ref href="12"/>
      </values>
    </limitation>
  </limitations>
</PolicyUpdate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/user/roles/3/policies/359 \
'Accept:application/vnd.ez.api.Policy+xml' \
'Content-Type:application/vnd.ez.api.PolicyUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
