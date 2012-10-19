source ../../rest.cfg

http --auth $username:$password -v $host/api/ezp/v2/content/types/1/fieldDefinitions/4 \
'Accept:application/vnd.ez.api.FieldDefinition+xml'
