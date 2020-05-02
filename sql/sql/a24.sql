
select 'a24.sql (auto Join)' as uebung;


drop table mitarbeiter;

create table mitarbeiter
(
	 id int primary key
	,name varchar(16) not null
	,vorgesetzterId int
);


insert into mitarbeiter values(  1, 'boss der bosse', NULL);	
insert into mitarbeiter values( 10, 'unterboss 1', 1);	
insert into mitarbeiter values( 20, 'unterboss 2', 1);	
insert into mitarbeiter values( 30, 'unterboss 3', 1);	
insert into mitarbeiter values( 11, 'hugo', 10);	
insert into mitarbeiter values( 12, 'fritz', 10);	
insert into mitarbeiter values( 21, 'max', 20);	
insert into mitarbeiter values( 22, 'gerd', 20);	

select * from mitarbeiter;
;

--
--	auto join 
--
select 
		m.id, m.name, m.vorgesetzterId, v.name
	from mitarbeiter m, mitarbeiter v
		where m.vorgesetzterId = v.id
		order by vorgesetzterId
;
--
--	auto join als inner join
--
select 
	m.id MitarbeiterId, 
	m.name MitarbeiterName, 
 	m.vorgesetzterId VorgesetzerId, 
 	v.name VorgesetzerNamefrom 
  from 	mitarbeiter m
	inner join	mitarbeiter v on m.vorgesetzterId = v.id
;
	
	
	