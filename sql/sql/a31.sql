

select 'a31.sql (foreign key)' as uebung;

drop table person;
drop table adresse;

create table adresse
(
	id 	int primary key, 
	ort varchar(20) 
);
	
create table person 
(
	id 	int primary key, 
	adressId int REFERENCES adresse(id),
	name 	varchar(20) 
);




insert into adresse values(1, 'basel');
insert into person (id,name,adressId) values(1, 'huber' ,1);


select * from person;
select * from adresse;


