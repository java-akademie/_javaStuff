
--
-- ----------------
-- uebung rekursion
-- ----------------
--

drop table mitarbeiter;

create table mitarbeiter
(
	 id int primary key
	,name varchar(16) not null
	,vorgesetzterId int
);

insert into mitarbeiter values(  1, 'boss der bosse', 1);	
insert into mitarbeiter values( 10, 'unterboss 1', 1);	
insert into mitarbeiter values( 20, 'unterboss 2', 1);	
insert into mitarbeiter values( 30, 'unterboss 3', 1);	
insert into mitarbeiter values( 11, 'hugo', 10);	
insert into mitarbeiter values( 12, 'fritz', 10);	
insert into mitarbeiter values( 21, 'max', 20);	
insert into mitarbeiter values( 22, 'gerd', 20);	

	
select m.id MitarbeiterId, m.name MitarbeiterName, 
 		m.vorgesetzterId VorgesetzerId, v.name VorgesetzerName
 	from mitarbeiter m, mitarbeiter v
 		where m.vorgesetzterId = v.id;
