source $(dirname "$0")/../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/urlaliases/0-83423f0735f118c52d5e75efbef81a37 \
'Accept:application/vnd.ez.api.UrlAlias+xml'
