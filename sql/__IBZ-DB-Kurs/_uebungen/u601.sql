
drop table mitarbeiter;
drop table abteilung;
drop table ort;

create table mitarbeiter
	(
		id 	int primary key, 
		name varchar(20), 
		salaer int,
		ortId int,
		abteilungId int
	);
create table abteilung
	(
		id 	int primary key, 
		bez varchar(20) 
	);
create table ort
	(
		id 	int primary key, 
		ort varchar(20) 
	);


insert into mitarbeiter values(1, 'huber',222,1,1);
insert into mitarbeiter values(2, 'gruber',333 ,2,1);
insert into mitarbeiter values(3, 'meier',400 ,3,1);
insert into mitarbeiter values(4, 'huber',200 ,1,2);
insert into mitarbeiter values(5, 'wirtz',123,2,2);
insert into mitarbeiter values(6, 'obermeier',122 ,3,2);
insert into mitarbeiter values(7, 'meierbeer',122 ,1,3);
insert into mitarbeiter values(8, 'huber',1234 ,2,3);
insert into mitarbeiter values(9, 'huber',111 ,3,3);
insert into mitarbeiter values(10, 'huber',223 ,1,1);
insert into mitarbeiter values(11, 'huber',23445 ,2,2);
insert into mitarbeiter values(12, 'huber',334 ,3,3);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');

insert into abteilung values(1,'einkauf');
insert into abteilung values(2,'verkauf');
insert into abteilung values(3,'entwicklung');

-- select * from mitarbeiter;

-- select's mit Gruppenfunktionen
-- count, min, max, avg, sum

select 
	count(salaer),
	min(salaer),
	max(salaer),
	avg(salaer),
	sum(salaer) 
  from mitarbeiter
;

select 	
		m.abteilungId,
		a.bez,
		m.ortId,
		o.ort,
		count(*) as Anzahl_Mitarbeiter,
		min(salaer),
		max(salaer),
		avg(salaer),
		sum(salaer) 
	from
		mitarbeiter m
	inner join 
		abteilung a on m.abteilungId = a.id
	inner join
		ort o on m.ortId=o.id
	where
		m.abteilungId=2 --  and m.ortId=1
	group by 
		m.ortId
	having
		count(*) > 0
;

select 	
		o.id,
		o.ort,
		count(*) as Anzahl_Mitarbeiter,
		min(salaer),
		max(salaer),
		avg(salaer),
		sum(salaer) 
	from
		mitarbeiter m 
	inner join
		ort o on o.id=m.ortId
	where
		o.id > 1
	  and	m.salaer<10000	
	group by 
		ortId, abteilungId
	having
		count(*) > 0
;





	