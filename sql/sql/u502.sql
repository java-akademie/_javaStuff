
drop table kund;
drop table ort;

create table kund
	(
		id 	int primary key, 
		name varchar(20), 
		x varchar(20),
		y varchar(20),
		ortId int
	);
create table ort
	(
		id 	int primary key, 
		ort varchar(10) 
	);


insert into kund values(1, 'hu\\ber','a','b' ,1);
insert into kund values(2, 'gruber','a','b' ,2);
insert into kund values(3, 'meier','a','b' ,2);
insert into kund values(4, 'huber','a','b' ,3);
insert into kund values(5, 'wirtz','a','b',3);
insert into kund values(6, 'obermeier','a','b' ,3);
insert into kund values(7, 'meier\\neer','a','b' ,0);
insert into kund values(8, 'mister-10%xxx x','a','b' ,0);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');

select * from kund;

select 'Kennzeichen:'|| x as KZ from kund;


select distinct  name from kund;

-- where bedingungen
-- =, >=, <=
-- <> nicht gleich, != nicht gleich

select * from kund
	where name like '%\\\\%'
	;

select
	k.id as KID,
	k.name as Zuname, 
	o.id as OID,
	o.ort as Wohnort
  from 
	kund  k , ort  o
  where
	o.id=k.ortId
  order by
	3,2 desc
;






	