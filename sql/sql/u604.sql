
drop table maenner;
drop table frauen;

create table maenner
	(
		id 	int primary key, 
		name varchar(20), 
		gewicht int
	);
create table frauen
	(
		id 	int primary key, 
		name varchar(20), 
		gewicht int
	);

insert into maenner values(1, 'frith',70);
insert into maenner values(2, 'franz',75);
insert into maenner values(3, 'urs',80);
insert into maenner values(13, 'urs2',80);
insert into maenner values(4, 'gerd',85);
insert into maenner values(5, 'hans',90);
insert into maenner values(6, 'peter',95);

insert into frauen  values(1, 'eva',45);
insert into frauen  values(2, 'sandra',50);
insert into frauen  values(3, 'petra',55);
insert into frauen  values(4, 'eveline',60);
insert into frauen  values(5, 'julia',65);
insert into frauen  values(6, 'erika',70);
insert into frauen  values(7, 'roberta',75);
insert into frauen  values(8, 'roberta',80);
insert into frauen  values(9, 'roberta',85);
insert into frauen  values(10, 'roberta',90);


select * from maenner;
select * from frauen;

select avg(gewicht) as 'd-maenner' from maenner;
select avg(gewicht) as 'd-frauen' from frauen;
	
	
select * from frauen where gewicht > (select avg(gewicht) from maenner);

select * from frauen where gewicht < (select avg(gewicht) from frauen);

select * from frauen f where gewicht in (select gewicht from maenner m where m.gewicht=f.gewicht); 