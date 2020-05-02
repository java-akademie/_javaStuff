
select 'a14.sql (intersect)' as uebung;

drop table person;
drop table kund;

create table person
(
	id 	int primary key, 
	name varchar(20), 
	ort  varchar(20),
	salaer decimal(38,2) not null
);

create table kund
(
	id 	int primary key, 
	firmenname varchar(22), 
	addr  varchar(22),
	kont decimal(20,5)
);

insert into person values(1, 'huber' ,'basel' , 106322.70);
insert into person values(2, 'meier' ,'genf'  ,  55322.70);
insert into person values(3, 'gruber','bern'  ,  17455.70);
insert into person values(4, 'banz'  ,'bern'  ,  12345.70);
insert into person values(5, 'benz'  ,'basel' ,  77988.70);
insert into person values(6, 'huber' ,'basel' , 106322.70);
insert into person values(7, 'meier' ,'genf'  ,  55322.70);

insert into kund values(11, 'huber'  , 'basel' ,  111.12304);
insert into kund values(12, 'meier'  , 'genf' ,  111.12304);
insert into kund values(13, 'meier +  Co KG  ','basel' ,  '111.12304');
insert into kund values(14, 'gruber + Co KG'  ,'basel' ,  '111.12304');
insert into kund values(15, 'huber'  , 'basel' ,  111.12304);
insert into kund values(16, 'meier'  , 'genf' ,  111.12304);


--
-- intersect
--
select name as bezeichnung,ort as adresse from person
intersect 
select firmenname,addr from kund
;
select name as bezeichnung,ort as adresse from person
intersect all
select firmenname,addr from kund
;


