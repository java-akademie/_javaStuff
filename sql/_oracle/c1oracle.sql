

alter table person
	drop constraint fk_adresse;

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
			-- der FK soll einen namen haben
		    -- damit man ihn auch wieder loeschen kann
			-- wenn der FK im create table angelegt
			-- wird, muss die referenztabelle schon
			-- vorhanden sein!
			-- BESSER 
			--   alter table add constraint nachdem
			--   alle tabellen angelegt wurden
		FOREIGN KEY (adressId) REFERENCES adresse(id)
	);


alter table person 
	add (info varchar(10) default 'leer');

alter table person
	drop constraint fk_adresse;

alter table person
	add constraint fk_adresse 
		foreign key(adressId) references adresse(id);

insert into adresse values(1, 'basel');
insert into person (id,name,adressId) values(1, 'huber' ,1);


--
-- index erzeugen
--     primary keys haben schon einen index
--
-- create index person_name_ix on person (name); 
-- create index person_adressId_ix on person (adressId); 

-- drop index person_name_ix; 

select * from person;
select * from adresse;


