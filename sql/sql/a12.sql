
select 'a12.sql (kartesisches Produkt)' as uebung;


drop table ort;
drop table person;


create table person
(
	id 	int primary key, 
	name varchar(20),
	ortId int
);

create table ort
(
	id 	int primary key, 
	ort varchar(20)
);

insert into person values(1, 'huber' ,1 );
insert into person values(2, 'meier' ,2 );
insert into person values(3, 'gruber',2 );

insert into ort    values(1, 'basel'    );
insert into ort    values(2, 'bern'     );

--
-- kartesisches produkt
-- 
select * from person,ort;
