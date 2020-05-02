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


insert into kund values(1, 'huber' ,1,1);
insert into kund values(2, 'gerber' ,2,1);
insert into kund values(3, 'schuster' ,2,1);
insert into kund values(4, 'franz' ,5,1);
insert into kund values(5, 'meier' ,5,1);
insert into kund values(6, 'berger' ,5,1);
insert into kund values(7, 'bauer' ,5,1);
insert into kund values(8, 'ebner' ,5,1);
insert into kund values(9, 'mueller' ,4,1);

insert into ort values(1, 'basel',null);
insert into ort values(2, 'bern',null);
insert into ort values(3, 'paris',null);
insert into ort values(5, 'zuerich',null);


--
-- join (karthesisches produkt)
--
select * from kund ,ort 
;

--
-- theta-join
--
select * from kund  where id > 1
;

--
-- equi-join
--
select * from kund, ort where kund.ortId=ort.ortId;

select kund.id as "Kunden Nummer", kund.name as Name, ort.ort as Ort 
	from kund, ort 
	where kund.ortId=ort.ortId
;

select k.id as KundenNummer, k.name Name, o.ort Ort 
	from kund k, ort o 
	where k.ortId = o.ortId
	and o.ort like '%ch'
	order by Ort desc
;

select k.id,k.name,o.ort 
	from kund k
		inner join ort o on k.ortId = o.ortId
	where o.ort like '%ch'
;

select 'eine Zeile', k.id,k.name,o.ort 
	from kund k
		inner join ort o using(ortId)  
	where o.ort like '%ch'
;

select k.id as "K-id", k.name  "K-Name" , o.ort  "O-ort" 
	from kund k
		natural join ort o   
	where o.ort like '%ch'
	order by 2
;




