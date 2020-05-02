

drop table kund;
drop table ort;

create table kund
	(
		id 	int primary key, 
		name varchar(10), 
		ortId int,
		kz1 int
	);
create table ort
	(
		ortId 	int primary key, 
		ort varchar(10),
		kz2 int
	);


insert into kund values(1, 'huber' ,1,1);
insert into kund values(2, 'gruber' ,2,1);
insert into kund values(3, 'meier' ,1,1);
insert into kund values(4, 'frisch' ,3,1);
insert into kund values(5, 'kurz' ,0,1);

insert into ort values(1,'basel',null);
insert into ort values(2,'bern',null);
insert into ort values(3,'genf',null);
insert into ort values(4,'wien',null);
insert into ort values(5,'paris',null);


--
-- natural-join
--
select k.id, k.name, o.ort  
	from kund k natural join ort o
;
