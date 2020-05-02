
--
-- ----------------
-- uebung rekursion
-- ----------------
-- muss wegen drop/create database
-- als root durchgefuehrt werden
--

-- drop database uebung_rekursion;
-- create database uebung_rekursion;
-- use uebung_rekursion;

drop table mitarbeiter;

create table mitarbeiter
(
	 id int primary key
	,name varchar(16) not null
	,vorgesetzter int
);

alter table mitarbeiter
	add foreign key (vorgesetzter)
	references mitarbeiter (id);

insert into mitarbeiter values(  1, 'boss der bosse', 1);	
insert into mitarbeiter values( 10, 'unterboss 1', 1);	
insert into mitarbeiter values( 20, 'unterboss 2', 1);	
insert into mitarbeiter values( 30, 'unterboss 3', 1);	
insert into mitarbeiter values( 11, 'hugo', 10);	
insert into mitarbeiter values( 12, 'fritz', 10);	
insert into mitarbeiter values( 21, 'max', 20);	
insert into mitarbeiter values( 22, 'gerd', 20);	


select m.id, m.name, m.vorgesetzter, v.name
	from mitarbeiter m, mitarbeiter v
	where m.vorgesetzter = v.id
	order by vorgesetzter;
