docker exec ldap ldapsearch -x -H ldap://localhost -b dc=example,dc=org -D "cn=admin,dc=btpns,dc=com" -w admin123


mkdir data && sudo chown 10001 data
mkdir log && sudo chown 10001 log
mkdir secrets && sudo chown 10001 secrets