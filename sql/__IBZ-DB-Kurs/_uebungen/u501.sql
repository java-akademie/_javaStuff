--
-- inner und outer joins
--
drop table kund;
drop table ort;
drop table bestellung;
drop table position;

create table kund
	(
		id 	int primary key, 
		name varchar(10), 
		x varchar(10), 
		y varchar(10), 
		ortId int
	);
create table ort
	(
		id 	int primary key, 
		ort varchar(10) 
	);
create table bestellung
	(
		id 	int primary key, 
		code varchar(5),
		kundId int
	);
create table position
	(
		id 	int primary key, 
		bezeichnung varchar(10),
		bestellungId int
	);

insert into kund values(1, 'h\\b%r' ,'a','b',1);
insert into kund values(2, 'gruber','a','b' ,2);
insert into kund values(3, 'meier' ,'a','b',1);
insert into kund values(4, 'frisch' ,'a','b',3);
insert into kund values(5, 'kurz' ,'a','b',0);
insert into kund values(6, 'meier','a','b' ,0);
insert into kund values(7, 'meier','a','b' ,null);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');
insert into ort values(4,'wien');
insert into ort values(5,'paris');

insert into bestellung values(1,'x1', 1);
insert into bestellung values(2,'x2', 1);
insert into bestellung values(3,'x3', 2);
insert into bestellung values(4,'x4', 9);

insert into position values(1,'tische', 1);
insert into position values(2,'stuehle', 1);

insert into position values(3,'schraenke', 2);
insert into position values(4,'lampen', 9);


select 'kunde' || ' ' || y, id as identifikation,name as nachname,ortId ortskennzeichen from kund
order by ortskennzeichen,2
;
select distinct name from kund;

SELECT COUNT(*) FROM kUND;
SELECT SUM(ID), MAX(ID), MIN(ID), AVG(ID) FROM KUND;  

select ortId from kund 
-- where k.ortId=o.id
group by ortId
 having count(*) > 1
;
