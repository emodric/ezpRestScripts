source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/types?remoteId=a3d405b81be900468eb153d774f4f0d2 \
'Accept:application/vnd.ez.api.ContentTypeList+xml'
