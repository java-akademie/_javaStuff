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

insert into kund values(1, 'huber' ,1);
insert into kund values(2, 'gruber' ,2);
insert into kund values(3, 'meier' ,1);
insert into kund values(4, 'frisch' ,3);
insert into kund values(5, 'kurz' ,0);
insert into kund values(6, 'meier' ,0);

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

--
-- inner join
--
select k.id, k.name, o.ort, b.id, p.id, p.bezeichnung 
	from kund k 
		join ort o			on k.ortId        = o.id  
		join bestellung b 	on b.kundId      = k.id
		join position p 	on p.bestellungId = b.id
--  where o.id=1
;

--
-- left/right outer join
--		left/right
--		full	not supported by MySql 
--
select k.id,k.name,o.id,o.ort 
	from kund k 
		left  join ort o on o.id = k.ortId
	order by k.id
;
select k.id,k.name,o.id,o.ort 
	from kund k 
		right  join ort o on o.id = k.ortId
	order by k.id
;


select k.id,k.name,o.ort,b.code,p.bezeichnung 
	from kund k 
		left  join ort o on o.id = k.ortId
		left  join bestellung b on b.kundId = k.id
		left  join position p on p.bestellungId = b.id
	order by k.id,b.code
;

select k.id,k.name,o.ort,b.code,p.bezeichnung 
	from kund k 
		right  join ort o on o.id = k.ortId
		right  join bestellung b on b.kundId = k.id
		right  join position p on p.bestellungId = b.id
	order by k.id,o.ort
;




