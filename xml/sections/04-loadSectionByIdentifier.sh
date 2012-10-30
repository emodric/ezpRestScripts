source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/sections?identifier=standard \
'Accept:application/vnd.ez.api.SectionList+xml'
