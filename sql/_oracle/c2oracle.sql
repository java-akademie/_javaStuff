
--
-- index erzeugen
--     primary keys haben schon einen index
--
-- create index person_name_ix on person (name); 
-- create index person_adressId_ix on person (adressId); 

 drop index person_name_ix; 
-- drop index person_adressId_ix; 

select count(*) from person; 
select * from adresse;


