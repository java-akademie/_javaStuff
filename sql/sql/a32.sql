

select 'a32.sql (foreign key)' as uebung;


alter table person drop constraint fk_adresse;

drop table adresse;
drop table person;

create table adresse
(
	id 	int primary key, 
	ort varchar(20) 
);
	
create table person
(
	id 	int primary key, 
	name varchar(20), 
	adressId int,
	
	CONSTRAINT fk_adresse	
		FOREIGN KEY (adressId) REFERENCES adresse(id)
);


insert into adresse values(1, 'basel');
insert into person (id,name,adressId) values(1, 'huber' ,1);


select * from person;
select * from adresse;


