#
# anlegen einer neuen Datenbank
# DB-Name:  IBZDB
# User:     IBZUSER
# Password: IBZPASS
#

drop   database IBZDB;
create database IBZDB;
grant   all on  IBZDB.* to IBZUSER@localhost identified by 'IBZPASS';
grant   all on  IBZDB.* to IBZUSER@'%'       identified by 'IBZPASS';