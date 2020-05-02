

select 'a23.sql (outer join [left, right, full] [on, using])' as uebung;


drop table kund;
drop table addr;


create table kund
(
	id 	int primary key, 
	name varchar(10), 
	addrId int,
	kz1 int
);

create table addr
(
	addrId 	int primary key, 
	ort varchar(10),
	kz2 int
);


insert into kund values(1, 'huber' 		,1,1);
insert into kund values(2, 'gerber' 	,2,1);
insert into kund values(3, 'schuster' 	,2,1);
insert into kund values(4, 'franz' 		,5,1);
insert into kund values(5, 'meier' 		,5,1);
insert into kund values(6, 'berger' 	,5,1);
insert into kund values(7, 'bauer' 		,5,1);
insert into kund values(8, 'ebner' 		,5,1);
insert into kund values(9, 'mueller'	,4,1);
insert into kund values(19, 'mueller2'	,null,1);

insert into addr values(1, 'basel'		,null);
insert into addr values(2, 'bern'		,null);
insert into addr values(3, 'paris'		,null);
insert into addr values(5, 'zuerich'	,null);


--
--	left outer join on - wenn FK Name nicht gleich PK Name
--
select *
	from kund k
		left outer join 	addr a 	on k.addrId = a.addrId
;

--
--	right outer join using - nur wenn FK Name gleich PK Name
--
select k.id KundenNummer, k.name KundenName , a.ort KundenOrt
	from kund k
		right outer join 	addr a	using(addrId)  
;

--
--	full outer join  (funktioniert nicht mit MySql)
--
select k.id KundenNummer, k.name KundenName , a.ort KundenOrt
	from addr a
		full outer join kund k	on k.addrId = a.addrId
;
select k.id KundenNummer, k.name KundenName , a.ort KundenOrt, addrId
	from kund k
		full outer join addr a	using(addrId)  
;


--
--	full outer join - fuer MySql
--
select k1.id, k1.name, a1.ort, a1.addrId
	from kund k1
		left outer join 	addr a1 	on k1.addrId = a1.addrId

union

select k2.id, k2.name, a2.ort, a2.addrId
	from kund k2
		right outer join 	addr a2	using(addrId)  
;