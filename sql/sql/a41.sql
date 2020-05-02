

select 'a41.sql (not null, unique, index)' as uebung;


drop index person_name_ix;			
drop table person;


	
create table person
(
	id 	int primary key, 
	name varchar(20),
	kto int,
	kz	int unique not null
);

create        index person_name_ix on person (name); 
create unique index person_kto_ix  on person (kto); 


insert into person values(1, 'huber',111,11);
insert into person values(2, 'meier', 112,12);
insert into person values(3, 'meier', NULL,21);
insert into person values(4, NULL, NULL,22);
insert into person values(5, NULL, 113,31);

select * from person;


