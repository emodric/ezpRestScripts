source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/urlaliases/3-505e93077a6dde9034ad97a14ab022b1 \
'Accept:application/vnd.ez.api.UrlAlias+xml'
