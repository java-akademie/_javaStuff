drop table mitarbeiter;
drop table adresse;
drop table abteilung;
drop table kunde1;
drop table kunde2;

create table mitarbeiter
    (
		id int primary key, 
		nachname varchar(30), 
		vorname varchar(30), 
		adressId int, 
		abteilungId int
	);
create table adresse
	(
		id 	int primary key, 
		land varchar(20), 
		ort varchar(20), 
		strasse varchar(20), 
		plz varchar(20)
	);
create table abteilung
	(
		id 	int primary key, 
		bezeichnung varchar(20)
	);
create table kunde1
    (
		id int primary key, 
		nachname varchar(30), 
		vorname varchar(30), 
		adressId int
	);

create table kunde2
	(
		id 	int primary key, 
		firmenname varchar(20), 
		namenszusatz varchar(20), 
		adressId int
	);

insert into mitarbeiter values (1,'meier','josef',	1,1);
insert into mitarbeiter values (2,'gruber','fritz',	2,1);
insert into mitarbeiter values (3,'huber','max',	3,2);
insert into mitarbeiter values (4,'gerber','gerd',	4,2);
insert into mitarbeiter values (5,'steiner','urs',	5,3);

insert into adresse values (1,'schweiz','basel','hauptstrasse 12','4000');
insert into adresse values (2,'schweiz','worb-laufen','hauptstrasse 12','3000');
insert into adresse values (3,'schweiz','bern','hauptstrasse 12','3000');
insert into adresse values (4,'schweiz','basel','hauptstrasse 12','4000');
insert into adresse values (5,'schweiz','genf','hauptstrasse 12','1000');

insert into abteilung values (1,'buchhaltung');
insert into abteilung values (2,'einkauf');
insert into abteilung values (3,'verkauf');
insert into abteilung values (4,'produktion');

insert into kunde1 values (1,'meier','josef',1);

insert into kunde2 values (1,'huber ag','stahlbau',1);

 select vorname, nachname as name from mitarbeiter
    where nachname not like 'm%';
     
select id, nachname as nachname_firmenname from kunde1
    union
select id, firmenname from kunde2;


    select 'xxx',
		m.id as maId, 
		nachname, vorname, 
		plz, ort, strasse
	from mitarbeiter m
	inner join adresse 
		on m.adressId=adresse.id
	where adresse.ort='basel' and m.vorname='josef'
    ;


 select 
         m.id as maId, 
         m.nachname, m.vorname, 
         a.plz, a.ort, a.strasse
       from mitarbeiter m
         inner join adresse a on m.adressId = a.id
       where m.nachname='gruber' and a.ort='worb-laufen';


    select
        m.id as maId, m.nachname as maNachname,
        a.bezeichnung as abtBezeichnung
      from mitarbeiter m
        right outer join abteilung a on m.abteilungId = a.id
   --    where a.id <> 2
	  ;
 