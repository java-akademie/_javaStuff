
select 'a52.sql (Gruppenfunktionen COUNT/SUM/MIN/MAX/AVG)' as uebung;


drop table mitarbeiter;

create table mitarbeiter
	(
		id 	int primary key, 
		name varchar(20), 
		salaer int,
		ortId int,
		abteilungId int
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


select * from mitarbeiter;

select 
	count(salaer) as count,
	min(salaer) as min,
	max(salaer) as max,
	round(avg(salaer),2) as avg,
	sum(salaer) as sum
  from mitarbeiter
;

