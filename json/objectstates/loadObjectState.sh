source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/objectstategroups/2/objectstates/2 \
'Accept:application/vnd.ez.api.ObjectState+json' \
