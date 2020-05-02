
drop table mitarbeiter;
drop table abteilung;
drop table ort;

create table mitarbeiter
	(
		id 	int primary key, 
		name varchar(20), 
		salaer int,
		abteilungId int,
		ortId int
	);
create table abteilung
	(
		id 	int primary key, 
		name varchar(20) 
	);
create table ort
	(
		id 	int primary key, 
		name varchar(20) 
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

-- erste Frage

    select 
		m.id   as 'MA-ID', 
		m.name as 'MA-NAME', 
		o.name as 'ORTSNAME',
		a.name as 'ABTEILUNGSNAME'
    from
		mitarbeiter m, 
		abteilung   a, 
		ort         o
    where
			o.name like 'basel'	
		and	m.abteilungId = a.id
		and m.ortId       = o.id
    ;
	
--  oder

    select 
		m.id   as 'MA-ID', 
		m.name as 'MA-NAME', 
		o.name as 'ORTSNAME',
		a.name as 'ABTEILUNGSNAME'
    from
		mitarbeiter m 
	inner join 	
		abteilung   a   on m.abteilungId = a.id
	inner join 	
		ort         o   on m.ortId       = o.id 
    where	
		o.name like 'basel'
    ;

-- zweite Frage

	select count(*) as 'ANZAHL DER MITARBEITER' from mitarbeiter;

-- dritte Frage

	select 
		abteilungId as 'ABTEILUNG-ID', 
		avg(salaer) as 'D-SALAER' 
	from 
		mitarbeiter 
	group by 
		abteilungId
	;
	

-- vierte Frage

	select 
		m.ortId       as 'ORT-ID', 
		o.name        as 'ORTSNAME',
		avg(m.salaer) as 'D-SALAER' 
	from 
		mitarbeiter m,
		ort o 
	where 		
		m.ortId=o.id
	group by 
		ortId
	;
	
--  oder

	select 
		m.ortId       as 'ORT-ID', 
		o.name        as 'ORTSNAME',
		avg(m.salaer) as 'D-SALAER' 
	from 
		mitarbeiter m
	inner join
		ort o on m.ortId = o.id
	group by 
		ortId
	;
	
	
	
	

	