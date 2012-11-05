source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objectstategroups \
'Accept:application/vnd.ez.api.ObjectStateGroupList+json'
