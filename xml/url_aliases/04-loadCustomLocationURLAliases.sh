source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/locations/1/5/urlaliases \
'Accept:application/vnd.ez.api.UrlAliasRefList+xml'
