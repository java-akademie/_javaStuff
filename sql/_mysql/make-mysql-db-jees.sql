drop   database jees;
create database jees;
grant   all on  jees.* to jees@localhost identified by 'jees';
grant   all on  jees.* to jees@'%'       identified by 'jees';