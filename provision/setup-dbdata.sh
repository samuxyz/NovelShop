#!/bin/bash
#
cd /dbsql

readonly DBSQL=( "demoa6.sql")
for i in "${DBSQL[@]}"; do
    NAME=$i
    mysql -u root -pshopperDBadmin demoa6 < $NAME
done


readonly NOVELSQL=( "ip2nation.sql"  "ip2nationCountries.sql"  "shop_menu_limit.sql"  "shop_menu_limit_relation.sql" )
for i in "${NOVELSQL[@]}"; do
    NAME=$i
    mysql -u root -pshopperDBadmin novellink < $NAME
done