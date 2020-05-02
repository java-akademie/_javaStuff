

select 'a43.sql (check)' as uebung;


drop table person;


create table person
(
	id 	int primary key, 
	name varchar(20), 
	sex char(1) check (sex in('m','f'))
);

insert into person values(1, 'fritz'			, 'm' );
insert into person values(2, 'erika'			, 'f');
insert into person values(3, 'nicht erlaubt'	, 's');


select *
	from person k
;
