

select 'a42.sql (drop/create primary key)' as uebung;



drop table person;


	
create table person
(
	id 	int, 
	name varchar(20),
	adressId int,
--
	CONSTRAINT pk_person PRIMARY KEY (id) 
);


insert into person  values(1, 'HUBER' ,1);
insert into person  values(2, 'MEIER' ,2);
insert into person  values(3, 'GRUBER' ,3);

select * from person;

ALTER TABLE person DROP CONSTRAINT pk_person;

update person set id=id*100;


ALTER TABLE person ADD CONSTRAINT pk_person PRIMARY KEY (id);

update person set id=id*100;


select * from person;
