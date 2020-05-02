

select 'a11.sql (select [restriction/projection/alias])' as uebung;



drop table person;


create table person
(
	id		int primary key, 
	name 	varchar(20), 
	ort  	varchar(20)
);


 insert into person values(1, 'huber', 'basel' );
 insert into person values(2, 'meier', 'genf'  );
 insert into person values(3, 'gruber', 'bern' );
 insert into person values(4, 'banz', 'bern'  );
 insert into person values(5, 'benz','basel' );

-- 
-- selection
--
select * from person;


-- 
-- restriction
--
select * from person where ort='basel';


-- 
-- projektion
--
select name, id from person;


-- 
-- projektion & restriction
--
select name, id from person where ort='basel';


-- 
-- alias
--
select id as Personalnummer, name as Nachname from person ;
select name as NName, ort as "ort der wohnung", id as PNR from person ;