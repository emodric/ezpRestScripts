source ../../rest.cfg

echo '<?xml version="1.0" encoding="UTF-8"?>
<UrlAliasCreate type="RESOURCE">
  <resource>module:/content/search</resource>
  <path>/some/other/path</path>
  <languageCode>eng-GB</languageCode>
  <alwaysAvailable>false</alwaysAvailable>
  <forward>true</forward>
</UrlAliasCreate>' | \
http --auth $username:$password -v POST $host/api/ezp/v2/content/urlaliases \
'Accept:application/vnd.ez.api.UrlAlias+xml' \
'Content-Type:application/vnd.ez.api.UrlAliasCreate+xml'
