create database park;
use park;
create table park(no_of_person int,name_of_person varchar(40),date_of_meet date,no_of_polices int);
  ALTER TABLE  park RENAME To i_park;
  desc i_park;
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(1,'sai','2023-1-2',1);
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(2,'naveen','2023-1-2',2);
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(3,'bobby','2023-1-12',3);
  select * from i_park;
  BEGIN TRANSACTION;
  SAVEPOINT savepoint1;
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(1,'saikumar','2023-2-2',1);
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(2,'naveenkumar','2023-1-12',2);
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(3,'bobby','2023-1-12',3);
   insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(4,'naveenkumar','2023-3-12',2);
  insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(5,'bobby','2023-4-12',3);
  update i_park set date_of_meet ='2023-03-06' where name_of_person='saikumar';
  SET SQL_SAFE_UPDATES = 0;
update i_park set date_of_meet ='2023-03-06' where name_of_person='naveenkumar';
rollback TO SAVEPOINT1;
savepoint jai;
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(4, 'sriram', '2022-05-23', 4);
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(5,'kiran', '2001-04-7',6);
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(7,'charan', '2022-09-16', 8);
commit;
rollback to jai;
BEGIN TRANSACTION
savepoint jai;
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(4, 'sriram', '2022-05-23', 4);
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(5,'kiran', '2001-04-7',6);
insert into i_park(no_of_person, name_of_person, date_of_meet, no_of_polices)values(7,'charan', '2022-09-16', 8);
commit;
rollback to jai;

select * from i_park;
commit;

