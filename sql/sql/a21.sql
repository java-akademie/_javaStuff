

select 'a21.sql (joins theta/equi)' as uebung;


drop table addr;
drop table kund;


create table kund
	(
		id 	int primary key, 
		name varchar(10), 
		addrId int,
		kz1 int
	);

create table addr
	(
		id 	int primary key, 
		ort varchar(10),
		kz2 int
	);



 insert into addr values(1, 'basel'		,1);
 insert into addr values(2, 'bern'		,1);
 insert into addr values(3, 'paris'		,1);
 insert into addr values(5, 'zuerich'	,1);




 insert into kund values(1, 'huber' 	,1,1);
 insert into kund values(2, 'gerber' 	,2,1);
 insert into kund values(3, 'schuster' 	,2,1);
 insert into kund values(4, 'franz' 	,3,1);
 insert into kund values(5, 'meier' 	,3,1);
 insert into kund values(6, 'berger' 	,5,1);
 insert into kund values(7, 'bauer' 	,5,1);
 insert into kund values(8, 'ebner' 	,5,1);
 insert into kund values(9, 'mueller' 	,4,1);

--
-- join (kartesisches Produkt)
--
select * from kund, addr 
	order by 1
;


--
-- theta-join (immer noch kartesisches Produkt
--
select * from kund, addr  where kund.id > 1 
	order by 1
;

--
-- equi-join (immer noch kartesisches Produkt)
--
select * from kund, addr  where kund.id = 1 
	order by 1
;

--
-- joins (keine kartesischen Produkte mehr w/where k.addrId=a.id)
--
select kund.id as "Kunden Nummer", kund.name as Name, addr.ort as Ort 
	from kund, addr 
	where kund.addrId=addr.id
	order by "Kunden Nummer" 
;

