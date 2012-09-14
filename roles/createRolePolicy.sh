echo '<?xml version="1.0" encoding="UTF-8"?>
<PolicyCreate>
  <module>content</module>
  <function>create</function>
  <limitations>
    <limitation identifier="Class" media-type="application/vnd.ez.api.limitation">
      <values>
        <ref href="13"/>
      </values>
    </limitation>
    <limitation identifier="ParentClass" media-type="application/vnd.ez.api.limitation">
      <values>
        <ref href="12"/>
      </values>
    </limitation>
  </limitations>
</PolicyCreate>' | \
http -v POST localhost:8042/user/roles/5/policies \
'X-Test-User:14' \
'Accept:application/vnd.ez.api.Policy+xml' \
'Content-Type:application/vnd.ez.api.PolicyCreate+xml'
