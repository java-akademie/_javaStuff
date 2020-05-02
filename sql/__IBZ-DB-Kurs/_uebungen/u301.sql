
drop table person;

create table person
	(
		id 	int primary key, 
		name varchar(20), 
		ort  varchar(20),
		salaer decimal(10,2) not null
	);

insert into person values(1, 'huber' ,'basel' , 106322.70);
insert into person values(2, 'meier' ,'genf'  ,  55322.70);
insert into person values(3, 'gruber','bern'  ,  17455.70);
insert into person values(4, 'banz'  ,'bern'  ,  12345.70);
insert into person values(5, 'benz'  ,'basel' ,  77988.70);

-- 
-- restriction - selection
--
select * from person;
select * from person where ort='basel';

-- 
-- projektion
--

select id,name,salaer  from person ;
select id,name,salaer  from person where ort='basel' ;
