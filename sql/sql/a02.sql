

select 'a02.sql (Literale Oracle und Postgres)' as uebung;

drop table mitarb;

create table mitarb
(
	id int
	,name			varchar(20)
	,betrag			decimal(20,2)
	,datum			date
	,zeitstempel	timestamp
);




insert into mitarb values(1, 'meier'	, 1000.50, '2015.07.13','2015/07/14 21:30:44');
insert into mitarb values(1, 'meier'	, 1000.50, '2015-07-14','2015/07/14 21:30:45');
insert into mitarb values(1, 'meier'	, 1000.50, '1947/10/24','2015/07/22 21:30:46');


insert into mitarb (id,name,betrag,datum,zeitstempel) 
	values
	(
		2, 'huber'	, 1000.50
		,to_date('24-10-1947' , 'dd-mm-yyyy' )
		,to_timestamp('2015/02/28 17:30:50' , 'yyyy/mm/dd hh24:mi:ss' )
	);
	
-- insert into mitarb (id,name,betrag,datum) values(1, 'huber'	, 1000.50,'28.02.2001' );

 
select * from mitarb;

select to_char(datum,'yyyy/mm/dd hh24:mi:ss') as datum from mitarb;
select to_char(zeitstempel,'dd') as zeitstempel from mitarb;
select to_char(datum,'dd.mm.yyyy') as datum from mitarb;
select datum + 1 as "datum+1"  from mitarb;
