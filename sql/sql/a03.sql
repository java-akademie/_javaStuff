
select 'a03.sql (Literale MySql)' as uebung;


drop table mitarb;

create table mitarb
(
	id int
	,name		varchar(20)
	,betrag		decimal(20,2)
	,datum		date
	,datum_zeit datetime
	,zeitstempel1	timestamp
	,zeitstempel2	timestamp
);




insert into mitarb (id,name,betrag,datum) 
	values
	(
		3, 'huber'	, 1000.50
		,'2012/04/28 12:00:00'
	);


insert into mitarb (id,name,betrag,datum,datum_zeit) 
	values
	(
		1, 'huber'	, 1000.50
		,'2012/04/28 12:00:00', '2012/02/28 11:11:11'
	);

insert into mitarb (id,name,betrag,datum,datum_zeit) 
	values
	(
		2, 'meier'	, 55000.50
		,current_date, current_timestamp
	);

select id,name,betrag,datum,day(datum),datum_zeit  from mitarb;

select date_add(date(datum), interval 1 day)  from mitarb;
SELECT DATE_ADD(DATE(NOW()), INTERVAL 1 DAY) FROM mitarb;

select * from mitarb;
