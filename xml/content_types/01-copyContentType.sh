source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v POST $host/api/ezp/v2/content/types/3 \
'X-HTTP-Method-Override:COPY'
