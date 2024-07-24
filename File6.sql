create database assignment1;
use assignment1;
create table movie(movie_id int, release_year int, director varchar(20), movie_rating int, movie_type varchar(20));
alter table movie add column title varchar(20);
alter table movie add column producer varchar(20);
alter table movie add column hero varchar(20);
alter table movie add column vial varchar(20);
alter table movie add column duration int;



drop table movie;
  
  
create table movie(release_year int, director varchar(20), movie_rating int, movie_type varchar(20),moviebudjet bigint);
alter table movie add column title varchar(20);
alter table movie add column producer varchar(20);
alter table movie add column hero varchar(20);
alter table movie add column vial varchar(20);
alter table movie add column attendingmovie boolean;

desc movie;
insert into movie values(2001, 'Kishor', 5, 'Action', 200000, 'Kalsipalaya', 'Kumar', 'Darshan', 'Rahul', true); 
select * from movie;
select count(*) from movie;
insert into movie values(2010, 'Rohit', 5, 'Action', 5000000, 'Baby', 'Rakesh', 'Akashy_kumar', 'Rohan', false);
insert into movie values(2020, 'Prashant_nil', 5,'Action', 6000000, 'KGF', 'Sanjay', 'Yash', 'Garuda', true);
insert into movie values(2022, 'Yogesh', 4, 'detective', 500000, 'Lost', 'Rahul', 'Yami_Gautam', 'Pakaj_Kpur', true);
insert into movie values(2022, 'R. Balki', 4, 'detective', 1000000, 'Chup', 'Hope production', 'Sunry_Deol', 'salmaan', false);
insert into movie values(2022, 'Jalmari Helander', 5, 'Action', 2000000, 'SISU', 'Joseph', 'Arnold', 'British_army', true);
insert into movie values(2024, 'Amit_Sharma', 4, 'Biopic', 3000000, 'Maidaan', 'Akash_Chawla', 'Ajay Devgan', '  ', true);
insert into movie values(2024, 'Raghav_Nayak', 3, 'Thriller', 3000000, 'O2', 'PRK_Productions', 'Ashika_Rangnath', 'Goplakrishna', false);
insert into movie values(2024, 'D_Suresh_Babu', 5, 'Biopic', 5000000, '10th_Fail', 'Vinod Chopra Films', 'Vikrant Massey', '   ', true);
insert into movie values(2024, 'Randeep_Hooda', 5, 'Petriyotic', 30000000, 'Veer_Savarkar', 'Yogesh Rahar', 'Randeep_Hooda', 'British_Forces', true);


update movie set moviebudjet = 40000000 where title = 'Veer_Savarkar';
update movie set movie_rating = 4 where title = 'Baby';
update movie set moviebudjet = 50000000 where title = 'Veer_Savarkar';
update movie set movie_rating = 3 where producer = 'Hope production';
update movie set release_year = 2024 where title = 'Lost';
update movie set hero = 'Akashy_Kumar' where title = 'Chup';
update movie set moviebudjet = 8000000 where producer = 'Vinod Chopra Films';
alter table movie rename column vial to vilan;
update movie set attendingmovie = false where movie_type = 'Thriller';
update movie set director = 'Yogesh' where movie_type = 'detective';


create table bank_details(brach_id int, barch_name varchar(20), noofemployees int, managername varchar(20),noofaccountholders int);

alter table  bank_details add column accountholder_id int;
alter table bank_details add column accountholdername varchar(20);
alter table bank_details add column account_type varchar(20);
alter table bank_details add column ifsc_code varchar(20);
alter table bank_details add column balcnce bigint;

desc bank_details;

insert into bank_details values(10, 'Basavanaahlii', 40, 'Girish', 105, 12, 85, 'arun','savings','CAN110',200000);
insert into bank_details values(15, 'Vijapura', 50, 'Ramesh', 502, 50, 85, 'Rahul','Current','CAN110',50000);
insert into bank_details values(20, 'Kote', 20, 'Rakesh', 42, 58, 63, 'Shashank','Loan','SBI08',40000);
insert into bank_details values(25, 'Rajajinagara', 60, 'Sujay', 78, 502, 56, 'Rohan','Joint','SBI204',5000000);
insert into bank_details values(58, 'Joythinagara', 60, 'Karthik', 100, 65, 57, 'Rakesh','savings','SBI502',500000);
insert into bank_details values(12, 'Yashwanthpura', 23, 'Ramesh', 60, 10, 78, 'Yash','Loan','CAN507',40000);
insert into bank_details values(59, 'Mejastic', 45, 'Priti', 56, 101, 98, 'Samar','savings','SBI110',600000);
insert into bank_details values(102, 'Yalhanka', 60, 'Priya', 52,87, 1, 'Lahari','Saving', 'ICIC539',800000);
insert into bank_details values(8, 'Ndini layout', 87, 'Mohan', 98, 74, 89, 'Varsha', 'Loan','SBI705',900000);
insert into bank_details values(98, 'Rajendranagra', 50, 'Kumar',50, 65, 103, 'Suresh','Saving','ICIC500',750000);

select count(*) from bank_details;

update bank_details set barch_name = 'Mariyappanapalaya' where brach_id = 15;
update bank_details set noofemployees = 78 where brach_id = 102;
update bank_details set account_type = 'Joint' where ifsc_code = 'CAN507';
update bank_details set balcnce = 7500000 where accountholder_id = 103;
update bank_details set ifsc_code = 'CAN509' where accountholder_id = 85;
update bank_details set noofemployees = 98 where brach_id = 12;
update bank_details set account_type = 'Joint' where accountholder_id = 78;
update bank_details set balcnce = 620000 where accountholder_id = 1;
update bank_details set noofaccountholders = 85 where brach_id = 8;
update bank_details set managername = 'Kiran' where brach_id  = 25;

select * from bank_details;

use assignment1;

ALTER TABLE bank_details RENAME column noofemployees TO employeecount;
alter TABLE bank_details RENAME COLUMN managername to manager; 
alter table bank_details rename column accountholdername to customername;
alter table bank_details rename column noofaccountholders to accountholdercount;


select * from movie;
alter table movie rename column movie_rating to ratings;
alter table movie rename column producer to invester;
alter table movie rename column hero to maincharacter;
alter table movie rename column attendingmovie to ticketbooking;
alter table movie rename column release_year to launchyear;

