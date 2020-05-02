--
-- inner/outer joins
--

drop table kund;
drop table ort;


create table kund
	(
		id 	int primary key, 
		name varchar(10), 
		ortId int
	);
create table ort
	(
		ortId 	int primary key, 
		ort varchar(10) 
	);

insert into kund values(1, 'huber' ,1);
insert into kund values(2, 'gruber' ,2);
insert into kund values(3, 'meier' ,1);
insert into kund values(4, 'frisch' ,3);
insert into kund values(5, 'kurz' ,0);

insert into ort values(1,'basel');
insert into ort values(2,'bern');
insert into ort values(3,'genf');
insert into ort values(4,'wien');
insert into ort values(5,'paris');

--
-- equi-join
--
select k.id, k.name, o.ort
	from kund k, ort o
	where k.ortId		 = o.ortId
	and	  o.ortId			 = 1
;

--
-- inner join
--
select * -- k.id, k.name, o.ort
	from kund k 
		inner join ort o	on k.ortId = o.ortId  
    where o.ortId=1
;
select * -- k.id, k.name, o.ort
	from kund k 
		natural join ort o	  
    where ortId=1
;
select * -- k.id, k.name, o.ort
	from kund k 
		inner join ort o using(ortId)  
    where ortId=1
;


--
-- left outer join
--
select k.id, k.name, o.ort
	from kund k
		left outer  join ort o on o.ortId = k.ortId  
;

--
-- right outer join
--
select k.id, k.name, o.ort
	from kund k
		right outer join ort o on k.ortId = o.ortId  
;

--
-- full outer join
--
select k.id, k.name, o.ort
	from kund k
		full outer join ort o on k.ortId = o.ortId  
;


--
-- full outer join - mysql
--
select k.id, k.name, o.ort
	from kund k
		left outer join ort o on k.ortId = o.ortId  
union
select k.id, k.name, o.ort
	from kund k
		right outer join ort o on k.ortId = o.ortId  
;

--
-- full outer join using und natural
--
select k.id, k.name, o.ort
	from kund k
		full outer join ort o using(ortId) 
;
select k.id, k.name, o.ort
	from kund k
	natural	right  outer join ort o 
;

