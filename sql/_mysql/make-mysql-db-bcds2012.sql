drop   database bcds2012;
create database bcds2012;
grant   all on  bcds2012.* to bcds2012@localhost identified by 'bcds2012';
grant   all on  bcds2012.* to bcds2012@'%'       identified by 'bcds2012';