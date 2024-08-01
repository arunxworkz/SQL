create database  Thursday;
use Thursday;
create table orders(id int, item_name varchar(20) unique, 
cost bigint, order_id int, hotel_name varchar(20), ratings enum('3 star', '5 star'), 
primary key(order_id));


insert into orders values(108, 'Idli', 35, 12, 'Sri sai', 2);
insert into orders values(250, 'Bisibele bath', 40, 506, 'Udupi', 2);
insert into orders values(602, 'Masale dose', 65, 32, 'Minskshi', 1);
insert into orders values(780, 'Puri', 80, 648, null, 1);
insert into orders values(860, 'Uppma', 25, 63, null, 1);
insert into orders values(750, 'Kesaribath', 50, 79, null, 1);
insert into orders values(820, 'Puliyogre', 40, 75, 'Shamgavi', 2);
insert into orders values(870, 'Set Dose', 35, 60, null, 1);
insert into orders values(960, 'Vade', 25, 56, null, 1);


select count(*) from orders;




create table hospital_information(patient_id int not null,nofopatients int,nameofhospital varchar(20),
noofstaffs int, hospitalarea varchar(20), hospitaltype enum('public', 'private')); 


INSERT INTO hospital_information values(102, 1022, 'Gayitri', 205, 'Rajajinagara',1);
INSERT INTO hospital_information values(12, 20, 'Lokesh', 3, 'Basavahalli', 2);
INSERT INTO hospital_information values(56, 102, 'Harsha', 25, 'Mejastic', 1); 
INSERT INTO hospital_information values(5, 90, 'Somshekar', 20, 'Jaynagara', 2); 
INSERT INTO hospital_information values(1, 20, 'Rakesh',5, 'Rajajonagara', 1);
INSERT INTO hospital_information VALUES (110, 1030, 'Priya', 213, 'Marathahalli', 1);
INSERT INTO hospital_information VALUES (104, 1024, 'Aisha', 207, 'Indiranagar', 1);
INSERT INTO hospital_information(patient_id,nofopatients,hospitaltype) values(78,80,1);
INSERT INTO hospital_information(patient_id, noofstaffs, hospitalarea) values(45, 50,'Kengeri');
insert into hospital_information values(450,1030,null, 543, null, 1);





select count(*) from hospital_information;
select * from hospital_information;

select * from hospital_information where nofopatients between 90 and 1000;
select * from orders where order_id between 20 and 50;



select * from orders where  item_name like 'i%';
select * from orders where  item_name like 'b%h';
 
select * from hospital_information where nameofhospital like 'g%i';
select * from hospital_information order by patient_id;
select * from hospital_information order by patient_id desc;




select * from orders order by order_id;
select * from orders order by order_id desc;	

select lower(nameofhospital) as to_lower from hospital_information;

select upper(item_name) as to_upper from orders;


select concat(item_name,'vs', hotel_name) from orders;

select concat(nameofhospital,'vs',hospitaltype) from hospital_information;

create index idx_item on orders(item_name, cost);
create index hospital_information on hospital_information(nameofhospital, noofstaffs);

select * from orders where cost > 50;

select * from hospital_information where nofopatients > 150;
