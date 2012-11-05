source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/content/objectstategroups/2/objectstates/3
