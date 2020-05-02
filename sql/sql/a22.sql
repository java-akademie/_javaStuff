

select 'a22.sql (cross join, inner join[on,using]), natural inner join' as uebung;

drop table kund;
drop table addr;
drop table ort;



create table kund
(
	id 			int primary key, 
	name 		varchar(10), 
	addrId 		int,
	kz1			int
);

create table addr
(
	addrId 		int primary key, 
	strasse 	varchar(20),
	plz			int,
	kz2			int
);

create table ort
(
	plz			int primary key, 
	ortsname 	varchar(10),
	kz3			int
);


insert into kund values(1, 'huber' 		,1,2);
insert into kund values(2, 'gerber' 	,2,2);
insert into kund values(3, 'meier' 		,4,2);
insert into kund values(4, 'meier' 		,3,1);
insert into kund values(5, 'mildner' 	,10,1);

insert into addr values(1, 'hadekstrasse 12',1000,1);
insert into addr values(2, 'kloppstasse  12',4000,1);
insert into addr values(3, 'pionierstrasse 7',2100,1);
insert into addr values(4, 'hauptplatz 18',2100,1);

insert into ort values(1000, 'wien',3);
insert into ort values(4000, 'basel',3);
insert into ort values(2100, 'korneuburg',3);


--
--	bis 1992
--
select *
	from kund k, addr a, ort o
		where k.addrId = a.addrId 
		and   a.plz = o.plz
;


--
--	cross join 
--
select *
	from kund k
		cross join 	addr a 
			cross join 	ort o 
				where k.addrId = a.addrId 
				and   a.plz = o.plz
;

--
--	inner join	on - wenn FK Name nicht gleich PK Name
--
select *
	from kund k
		inner join 	addr a 	on (k.addrId = a.addrId)
		inner join 	ort  o 	on (a.plz = o.plz)
;

--
--	inner join	using - nur wenn FK Name gleich PK Name
--
select *
	from kund k
		inner join 	addr a 	using (addrId)
		inner join 	ort  o 	using (plz)
			where k.name='meier'
;


--
--	natural join - nur wenn alle Attribut Namen von kund und addr gleich sind
-- 	Achtung: wenn wir kz2 auf kz1 aendern, funktioniert der natural join nicht mehr
--
select *
	from kund k
		natural inner join addr a   
		natural inner join ort  o   
;


