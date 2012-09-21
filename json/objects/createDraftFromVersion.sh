http -v POST localhost:8042/content/objects/58/versions/1 \
'X-Test-User:14' \
'X-HTTP-Method-Override:COPY' \
'Accept:application/vnd.ez.api.Version+json'
