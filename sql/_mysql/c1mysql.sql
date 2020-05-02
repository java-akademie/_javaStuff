

alter table person
	drop foreign key fk_adresse;

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
		FOREIGN KEY  (adressId) REFERENCES adresse(id)
	);


insert into adresse values(1, 'basel');
insert into adresse values(2, 'bern');
insert into person (id,name,adressId) values(1, 'huber' ,1);
insert into person (id,name,adressId) values(2, 'bauer' ,2);
insert into person (id,name,adressId) values(3, 'gruber' ,1);

alter table person
	drop foreign key fk_adresse;


alter table person
	add constraint fk_adresse 
		foreign key(adressId) references adresse(id)
;

--
-- index erzeugen
--     primary keys haben schon einen index
--
create index person_id_ix on person (id); 
create index person_name_ix on person (name); 
create index person_adressId_ix on person (adressId); 
-- drop index person_name_ix on person; 

select * from person;
select * from adresse;

commit;
