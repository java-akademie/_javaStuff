

-- a01.sql (drop, create table, create view)


drop table person;
drop table addr;

create table person
(
	id		int primary key
	,name 	varchar(20)
	,addrId	int
);

create table addr
(
	id		int primary key
	,ort 	varchar(20)
);

create or replace view vpers
	as 
		select 
			p.id, p.name, a.ort 
		from 
			person p, addr a 
		where 
			p.addrId=a.id
;
create or replace view vpers2
	as 
		select p.id, p.name, a.ort 
			from person p
				inner join addr a on p.addrId=a.id
;

insert into person values(1, 'huber'	, 1 );
insert into person values(2, 'meier'	, 1 );
insert into person values(3, 'gruber'	, 2 );
insert into person values(4, 'banz'	, 2 );
insert into person values(5, 'benz'	, 3 );
 
insert into addr values(1,'basel');
insert into addr values(2,'bern');
 
select * from vpers;
select * from vpers2;

drop view  vpers;
drop view  vpers2;