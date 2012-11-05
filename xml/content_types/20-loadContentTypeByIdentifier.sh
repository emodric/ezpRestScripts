source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/types?identifier=folder \
'Accept:application/vnd.ez.api.ContentTypeList+xml'
