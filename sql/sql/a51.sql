

select 'a51.sql (WHERE LIKE/<>/!=)' as uebung;


drop table kund;


create table kund
	(
		id 	int primary key, 
		name varchar(20), 
		x varchar(10),
		y varchar(10)
	);



insert into kund values(1, 'hu\\ber','a','b' );
insert into kund values(2, 'gruber','a','b' );
insert into kund values(3, 'meier','a','b' );
insert into kund values(4, 'huber','a','b' );
insert into kund values(5, 'wirtz%xx','a','b');
insert into kund values(6, 'obermeier_aa','a','b' );
insert into kund values(7, 'meier\\beer','a','b' );
insert into kund values(8, 'mister-10%xxx x','a','b' );

select * from kund;

select distinct 'Kennzeichen:'|| x as KZ from kund;


select distinct  name from kund;

-- where bedingungen
-- =, >=, <=
-- <> nicht gleich, != nicht gleich

select * from kund	where name like '%!%%' escape'!'	;

select * from kund	where name like '%~_%' escape'~'	;

select * from kund	where name like '%\\%' 	;

select * from kund	where name like '%meier%' 	;

select * from kund	where name not like '%meier%' 	;

select * from kund 	where name <> 'gruber'	;

select * from kund 	where name != 'gruber'	;


	