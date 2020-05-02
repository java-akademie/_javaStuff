
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
insert into mitarbeiter values(2, 'gruber',333 ,1,1);
insert into mitarbeiter values(3, 'meier',400 ,2,1);
insert into mitarbeiter values(4, 'huber',200 ,3,2);
insert into mitarbeiter values(5, 'wirtz',123,3,3);
insert into mitarbeiter values(6, 'obermeier',122 ,3,3);
insert into mitarbeiter values(7, 'meierbeer',122 ,0,3);
insert into mitarbeiter values(8, 'huber',111 ,4,4);
insert into mitarbeiter values(9, 'huber',234 ,4,4);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');
insert into ort values(4,'wien');

insert into abteilung values(1,'einkauf');
insert into abteilung values(2,'verkauf');
insert into abteilung values(3,'entwicklung');
insert into abteilung values(4,'buchhaltung');

select name,count(*)  from mitarbeiter
group by name
having name='huber'
 ;

 select avg(m.salaer) from mitarbeiter m
 where abteilungId=4 and ortId=4;
 
 select min(salaer), max(salaer) from mitarbeiter;

update mitarbeiter set salaer = (salaer * 1.1) where id=3;

select * from mitarbeiter;
	