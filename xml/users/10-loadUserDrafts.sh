source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/user/users/14/drafts \
'Accept:application/vnd.ez.api.VersionList+xml'
