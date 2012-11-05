source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/user/roles/5/policies
