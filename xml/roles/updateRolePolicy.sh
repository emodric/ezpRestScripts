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
http -v POST ezpublish5.local/api/ezp/v2/user/roles/5/policies/377 \
'Accept:application/vnd.ez.api.Policy+xml' \
'Content-Type:application/vnd.ez.api.PolicyUpdate+xml' \
'X-HTTP-Method-Override:PATCH'
