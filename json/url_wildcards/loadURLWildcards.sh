source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/urlwildcards \
'Accept:application/vnd.ez.api.UrlWildcardList+json' \
