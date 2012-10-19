source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/sections \
'Accept:application/vnd.ez.api.SectionList+json' \
