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
http -v POST localhost:8042/user/roles/5/policies/377 \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Policy+xml' \
'Content-Type:application/vnd.ez.api.PolicyUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
