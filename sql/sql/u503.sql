
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
		bez varchar(10) 
	);
create table ort
	(
		id 	int primary key, 
		ort varchar(10) 
	);


insert into mitarbeiter values(1, 'huber',222,1,1);
insert into mitarbeiter values(2, 'gruber',333 ,2,1);
insert into mitarbeiter values(3, 'meier',400 ,2,1);
insert into mitarbeiter values(4, 'huber',200 ,3,2);
insert into mitarbeiter values(5, 'wirtz',123,3,3);
insert into mitarbeiter values(6, 'obermeier',122 ,3,3);
insert into mitarbeiter values(7, 'meierbeer',122 ,0,3);
insert into mitarbeiter values(8, 'huber',null ,0,3);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');

insert into abteilung values(1,'einkauf');
insert into abteilung values(2,'verkauf');
insert into abteilung values(3,'entwicklung');

select * from mitarbeiter;

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
		abteilungId,
		bez,
		count(*) as Anzahl_Mitarbeiter,
		min(salaer),
		max(salaer),
		avg(salaer),
		sum(salaer) 
		from
		mitarbeiter,abteilung a
	where
		abteilungId = a.id
	group by 
		abteilungId
	having
		count(*) > 0
;

select 	
		ortId,
		ort,
		count(*) as Anzahl_Mitarbeiter,
		min(salaer),
		max(salaer),
		avg(salaer),
		sum(salaer) 
		from
		mitarbeiter,ort o
	where
		ortId = o.id
	group by 
		ortId
	having
		count(*) > 0
;





	