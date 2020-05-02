

select 'a45.sql (ON DELETE/ON UPDATE)' as uebung;



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
	name varchar(20),	
	adressId int,
	
	CONSTRAINT fk_adresse	
		FOREIGN KEY (adressId) REFERENCES adresse(id)
		--	ON DELETE SET NULL
			ON UPDATE CASCADE
			ON DELETE CASCADE
);


insert into adresse values(1, 'BASEL');
insert into adresse values(2, 'GENF');
insert into adresse values(3, 'BERN');

insert into person  values(1, 'HUBER' ,1);
insert into person  values(2, 'MEIER' ,2);
insert into person  values(3, 'GRUBER' ,3);


select * from person;
select * from adresse;

delete from adresse where id=1;
update adresse set id=12 where id=2;

select * from person;
select * from adresse;
