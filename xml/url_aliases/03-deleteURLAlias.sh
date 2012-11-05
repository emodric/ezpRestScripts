source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v DELETE $host/api/ezp/v2/content/urlaliases/85-d6fe1d0be6347b8ef2427fa629c04485
