--
-- joins
--

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


insert into kund values(1, 'huber' ,11,11);
insert into kund values(2, 'gerber' ,2,1);
insert into kund values(3, 'schuster' ,2,1);
insert into kund values(4, 'franz' ,5,1);
insert into kund values(5, 'meier' ,5,1);
insert into kund values(6, 'berger' ,5,1);
insert into kund values(7, 'bauer' ,4,1);
insert into kund values(8, 'ebner' ,4,1);
insert into kund values(9, 'mueller' ,4,1);

insert into ort values(1, 'basel',null);
insert into ort values(2, 'bern',null);
insert into ort values(3, 'paris',null);
insert into ort values(5, 'zuerich',null);
insert into ort values(6, 'genf',null);
insert into ort values(7, 'wien',null);



select k.id as 'k-id' ,k.name,o.ort 
	from kund k
		left outer join ort o on k.ortId = o.ortId
union
select k.id,k.name,o.ort 
	from kund k
		right outer join ort o on k.ortId = o.ortId
order by 'k-id'
;



