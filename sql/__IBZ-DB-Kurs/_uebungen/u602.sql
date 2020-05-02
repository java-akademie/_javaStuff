
drop table frauen;
drop table maenner;


create table frauen
	(
		name varchar(20), 
		gewicht int
	);

create table maenner
	(
		name varchar(20), 
		gewicht int
	);



insert into frauen 	values( 'f1',	40);
insert into frauen 	values( 'f2',	45);
insert into frauen 	values( 'f3',	50);
insert into frauen 	values( 'f4',	55);
insert into frauen 	values( 'f5',	60);
insert into frauen 	values( 'f6',	65);
insert into frauen 	values( 'f7',	70);
insert into frauen 	values( 'f8',	75);
insert into frauen 	values( 'f9',	80);
insert into frauen 	values( 'f10',	85);


insert into maenner	values( 'm1',	65);
insert into maenner	values( 'm2',	65);
insert into maenner	values( 'm3',	75);
insert into maenner	values( 'm4',	80);
insert into maenner	values( 'm5',	85);
insert into maenner	values( 'm6',	90);
insert into maenner	values( 'm7',	95);

select * from frauen;
select * from maenner;

select avg(gewicht) as 'avg(maenner)' from maenner;
select avg(gewicht) as 'avg(maenner)' from frauen;

select  * from frauen where gewicht  < (select avg(gewicht) from maenner);

select  * from frauen f where gewicht  in (select gewicht from maenner m where m.gewicht = f.gewicht);


select * 
	from 
		frauen 
	where 
		gewicht 	
	between 
		(select avg(gewicht) from frauen) 
	and     
		(select avg(gewicht) from maenner)
;


















	