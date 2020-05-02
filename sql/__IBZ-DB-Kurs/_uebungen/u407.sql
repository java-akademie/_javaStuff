drop table mitarbeiter;

create table mitarbeiter
	(
		id 	int primary key, 
		name varchar(20), 
		bossId int
	);

insert into mitarbeiter values (1,'boss der bosse',1);
insert into mitarbeiter values (10,'boss1',1);
insert into mitarbeiter values (11,'max',10);
insert into mitarbeiter values (20,'boss2',1);
insert into mitarbeiter values (21,'moritz',20);
insert into mitarbeiter values (30,'boss3',1);

select m.id,m.name,m.bossId,b.name 
	from mitarbeiter m,mitarbeiter b
	where m.bossId=b.id
;