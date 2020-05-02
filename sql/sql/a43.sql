

select 'a43.sql (zusammengesetzte PRIMARY KEYs)' as uebung;



drop table besuch;


	
create table besuch
(
	veranstaltungId int
	,besucherId int
--
	,CONSTRAINT pk_besuch PRIMARY KEY (veranstaltungId,besucherId) 
--oder
-- ,PRIMARY KEY (veranstaltungId,besucherId) 
);



insert into besuch  values(1,1);
insert into besuch  values(2,1);
insert into besuch  values(1,2);
insert into besuch  values(3,1);


select * from besuch;
