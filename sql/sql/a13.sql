

select 'a13.sql (union)' as uebung;


drop table person;
drop table kund;
drop table lieferant;

create table person
(
	id 	int primary key, 
	name varchar(20), 
	ort  varchar(20),
	salaer decimal(38,2) not null
);

create table kund
(
	id 	int primary key, 
	firmenname varchar(22), 
	addr  varchar(22),
	kont decimal(20,5)
);

create table lieferant
(
	id 	int primary key, 
	lname varchar(22), 
	lort  varchar(22),
	lbet int
);

insert into person values(1, 'huber' ,'basel' , 106322.70);
insert into person values(11, 'huber' ,'basel' , 106322.70);
insert into person values(2, 'meier' ,'genf'  ,  55322.70);
insert into person values(3, 'gruber','bern'  ,  17455.70);
insert into person values(4, 'banz'  ,'bern'  ,  12345.70);
insert into person values(5, 'benz'  ,'basel' ,  77988.70);

insert into kund values(1, 'huber'  , 'basel' ,  111.12304);
insert into kund values(11, 'huber'  , 'basel' ,  111.12304);
insert into kund values(2, 'meier +  Co KG  ','basel' ,  '111.12304');
insert into kund values(3, 'gruber + Co KG'  ,'basel' ,  '111.12304');

insert into lieferant values(1, 'huber2'  ,'basel' ,  999);

--
-- union
--
select 	'P' as KZ,name,ort as "Adresse" from person	
union 
select 	'K',firmenname,addr from kund
union 
select 	'L',lname,lort from lieferant
order by KZ,2
;
select 	'P' as KZ,name,ort as "Adresse" from person	
union all
select 	'K',firmenname,addr from kund
union all
select 	'L',lname,lort from lieferant
order by 1,name
;

--
-- union mit select *
-- tabellenueberschriften werden aus dem ersten select genommen
-- die Anzahl der Attribute muss gleich sein
-- mysql:  Typ der Attribute kann unterschiedlich sein
-- oracle: Typ der Attribute muss gleich sein
--
select  * from person
union 
select * from kund
union 
select * from lieferant
order by id,1
;
select  * from person
union all
select * from kund
union all
select * from lieferant
order by name,1
;

