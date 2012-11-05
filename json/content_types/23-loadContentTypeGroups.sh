source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/typegroups \
'Accept:application/vnd.ez.api.ContentTypeGroupList+json'
