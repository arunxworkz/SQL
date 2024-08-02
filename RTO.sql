create database RTO;
use RTO;

create table LLR_INFO(llr_id varchar(20) primary key, full_name varchar(20),
date_of_birth date, gender varchar(2), nationality varchar(20), 
phone_number bigint, id_proof_provided enum('addhar','PAN'), 
blood_group varchar(5), submission_date date, approval_date date);

create table LLR_TEST_INFO(test_id int primary key, llr_id varchar(20),
test_date date, test_type enum('written', 'online'), 
test_result enum('pass', 'fail'), remarks int, next_test_date date,
 next_test_date_status enum('scheduled', 'pending'),examiner_name varchar(20),
 umber_of_candidates_passed int,
foreign key (llr_id) references LLR_INFO(llr_id));


create table driving_licence_info(dl_id varchar(20) primary key, test_id int,
llr_id varchar(20), full_name varchar(20), date_of_birth date, gender varchar(5),
natinality varchar(20), phone_number bigint, issue_date date,
expiry_date date, licence_type enum('morotcycle','car','heavy vehicle'),
foreign key(llr_id) references LLR_INFO(llr_id),
foreign key(test_id) references LLR_TEST_INFO(test_id));


create table DRIVING_LICENSE_TEST_INFO(dl_id varchar(20),
test_id int, test_date date, test_result enum('pass','fail'),
remarks int, foreign key(dl_id) references driving_licence_info(dl_id));


insert into LLR_INFO values('KA18202489745','Arun_Belavadi', 
'2002-08-07', 'M', 'Indian', 745638905, 2, 'B+', '2018-02-13', '2018-04-15');
insert into LLR_INFO values('KA18202497462','Karthik', 
'1998-08-22', 'M', 'Indian', 745793895, 1, 'B+', '2015-07-30', '2015-08-15');
insert into LLR_INFO values('KA18202445672','Rohan', 
'2002-10-14', 'M', 'Indian', 745638775, 2, 'B+', '2023-12-21', '2024-01-15');
insert into LLR_INFO values('KA18202479233','Rahul', 
'2002-11-13', 'M', 'Indian', 744628675, 1, 'A+', '2024-01-21', '2024-03-23');
insert into LLR_INFO values('KA18202432649','Rakesh', 
'2002-12-24', 'M', 'Indian', 745696317, 1, 'O+', '2024-02-05', '2024-03-17');
insert into LLR_INFO values('KA18202464197','Ragu', 
'2003-12-04', 'M', 'Indian', 745976137, 2, 'A+', '2024-10-30', '2024-11-21');
insert into LLR_INFO values('KA18202432739','Kamala', 
'2001-02-03', 'F', 'Indian', 7457936317, 1, 'O+', '2024-01-31', '2024-04-17');
insert into LLR_INFO values('KA18202425467','Ragesh', 
'1998-08-01', 'M', 'Indian', 7456731631, 1, 'B+', '2024-10-21', '2024-11-26');
insert into LLR_INFO values('KA18202442168','Ramlal', 
'2000-12-24', 'M', 'Indian', 7457469314, 2, 'A+', '2024-10-21', '2024-12-25');
insert into LLR_INFO values('KA18202479613','Arun', 
'2002-03-07', 'M', 'Indian', 7457923117, 2, 'B+', '2024-06-30', '2024-07-09');
insert into LLR_INFO values('KA18202479431','Kumari', 
'2003-10-12', 'F', 'Indian', 613796317, 2, 'A+', '2024-10-12', '2024-11-17');
insert into LLR_INFO values('KA18202436128','Swathi', 
'2000-02-02', 'F', 'Indian', 745679316, 2, 'B+', '2024-01-20', '2024-05-30');
insert into LLR_INFO values('KA18202254697','Prema', 
'1997-12-21', 'F', 'Indian', 645696317, 2, 'B+', '2022-02-05', '2022-03-30');
insert into LLR_INFO values('KA18201832649','Chitra', 
'2002-12-24', 'F', 'Indian', 7456762317, 1, 'O+', '2018-02-05', '2018-04-30');
insert into LLR_INFO values('KA18202412649','Rakesh', 
'2002-12-24', 'M', 'Indian', 745696317, 1, 'O+', '2024-02-05', '2024-03-17');
insert into LLR_INFO values('KA17201732649','Komal', 
'1996-09-25', 'F', 'Indian', 747696327, 1, 'A+', '2017-09-02', '2017-11-28');
insert into LLR_INFO values('KA18202442649','Kamlesh', 
'2002-04-26', 'M', 'Indian', 745699637, 1, 'B+', '2024-11-25', '2024-12-17');
insert into LLR_INFO values('KA18202442689','Rakesh', 
'2002-12-24', 'M', 'Indian', 7456796317, 2, 'O+', '2024-02-05', '2024-03-17');
insert into LLR_INFO values('KA18201032649','Ram', 
'1995-12-24', 'M', 'Indian', 635696317, 1, 'A+', '2010-12-30', '2011-02-21');
insert into LLR_INFO values('KA18200932649','Ramdev', 
'1992-09-04', 'M', 'Indian', 6356973207, 1, 'B+', '2013-12-01', '2014-02-02');
insert into LLR_INFO values('KA18202032649','Saniya', 
'2002-03-13', 'F', 'Indian', 7456973207, 1, 'B+', '2020-01-30', '2020-04-03');
insert into LLR_INFO values('KA18200932749','Suchitra', 
'2002-10-16', 'F', 'Indian', 635697346, 2, 'B+', '2024-03-29', '2024-06-11');
insert into LLR_INFO values('KA18202431649','Ramdev', 
'2001-09-04', 'M', 'Indian', 6356974267, 1, 'B+', '2024-02-22', '2024-05-05');


select * from LLR_INFO;
select count(*) from LLR_INFO;



commit;

insert into LLR_TEST_INFO values(206, 'KA18202497462', '2015-07-30', 1, 1, 9,null, null, 'Ramesh', 10);
insert into LLR_TEST_INFO values(33305, 'KA18202442168', '2024-12-25', 1, 2, 3,'2025-02-28', 2, null, 10);
insert into LLR_TEST_INFO values(40679, 'KA18202442689', '2024-03-17', 2, 1, 6,'2024-06-25', 1, null, 100000);
insert into LLR_TEST_INFO values(2034, 'KA18202032649', '2024-06-11', 1, 2, 4,'2024-08-21', 1, null, 8000);
insert into LLR_TEST_INFO values(5795, 'KA18202254697', '2024-11-21', 2, 2, 0,null, 2, 'Rahul', 6710);
insert into LLR_TEST_INFO values(9613, 'KA18202431649', '2015-07-30', 1, 1, 9,null, null, 'Rohan', 10);
insert into LLR_TEST_INFO values(7956, 'KA18200932749', '2024-06-11', 2, 1, 5,null, null, 'Arun', 10);
insert into LLR_TEST_INFO values(8792, 'KA18202479613', '2024-07-09', 1, 2, 5,'2024-12-25', 1, 'Pranav', 10);
insert into LLR_TEST_INFO values(1234, 'KA18202436128', '2024-05-30', 1, 1, 8,null, null, 'Ramanna', 10);
insert into LLR_TEST_INFO values(4569, 'KA17201732649', '2017-11-28', 2, 1, 7,null, null, 'Ramesh', 110);
insert into LLR_TEST_INFO values(4976, 'KA18202254697', '2024-03-17', 1, 1, 7,null, null, 'null', 1050);
insert into LLR_TEST_INFO values(1236, 'KA18202432739', '2024-04-17', 1, 1, 8,null, null, null, 2050);
insert into LLR_TEST_INFO values(9874, 'KA18202479233', '2024-12-25', 1, 2, 4,null, 2, '', 105);
insert into LLR_TEST_INFO values(4561, 'KA18202489745', '2018-04-15', 2, 1, 5,null, null, 'Pranav', 600);
insert into LLR_TEST_INFO values(2589, 'KA18202479431', '2024-11-17', 1, 1, 2,'2025-02-12', 1, null, 500);
insert into LLR_TEST_INFO values(2587, 'KA18202032649', '2020-04-03', 1, 1, 9,null, null, null, 700);



select * from LLR_TEST_INFO;

select count(*) from LLR_TEST_INFO;

insert into driving_licence_info values('KA20246734', 1234, 'KA18202436128', 'Swathi', '2000-02-02', 
'F', 'Indian', 745679316, '2024-12-30', '2030-09-05', 1);
insert into driving_licence_info values('KA20241234', 1236, 'KA18202432739', 'Kamala', '2001-02-03', 
'F', 'Indian', 7457936317, '2024-11-30', '2034-09-05', 2);
insert into driving_licence_info values('KA22017457', 4569, 'KA17201732649', 'Komal', '1996-09-25',
'F', 'Indian', '747696327', '2018-03-21', '2030-10-27', 2);
insert into driving_licence_info values('KA2020456', 5649, 'KA18202032649', 'Saniya', '2002-03-13', 'F',
'Indian', 7456973207, null, null,null);

alter table driving_licence_info modify licence_type enum('morotcycle','car','heavy vehicle','pending');

insert into driving_licence_info values('KA2020678', 5795, 'KA18202254697', 'Prema', '1997-12-21','F',
'Indian', 645696317, null, null, null);
insert into driving_licence_info values('KA2009789', 7956, 'KA18200932749', 'Suchitra', '2002-10-16', 'F',
'Indian', 635697346, '2024-09-01', '2040-10-10', 3);
insert into driving_licence_info values('KA2020963', 8792, 'KA18202479613', 'Arun', '2002-03-07', 'M', 
'Indian', 7457923117, null, null, 4);
insert into driving_licence_info values('KA2024258', 9613, 'KA18202431649', 'Ramdev', '2001-09-04', 'M', 
'Indian', 6356974267, null, null, 1);
insert into driving_licence_info values('KA2024147', 9874, 'KA18202479233', 'Rahul', '2002-11-13', 'M',
'Indian', 744628675, null, null, 4);
insert into driving_licence_info values('KA2024753', 33305, 'KA18202442168', 'Ramlal', '2000-12-24', 'M',
'Indian', 7457469314, null, null, 4);
insert into driving_licence_info values('KA2024951', 40679, 'KA18202442689', 'Rakesh', '2002-12-24', 'M',
'Indian', 7456796317, '2024-05-15', '2045-02-21', 2);
insert into driving_licence_info values('KA2022379', 4976, 'KA18202254697', 'Prema', '1997-12-21', 'F',
'Indian', 645696317, '2024-07-01', '2040-10-13', 3);
insert into driving_licence_info values('KA2024751', 206, 'KA18202497462', 'Karthik', '1998-08-22', 'M',
'Indian', 745793895, null, '2050-01-01', 3);
insert into driving_licence_info values('KA2020679', 2587, 'KA18202032649','Saniya', '2002-03-13', 'F',
'Indian', 7456973207, '2024-06-17', '2056-03-09', 1);
insert into driving_licence_info values('KA2024137', 2589, 'KA18202479431', 'Kumari', '2003-10-12', 'F',
'Indian', 613796317, '2024-12-12', '2050-12-21', 2);
insert into driving_licence_info values('KA2024491', 4561, 'KA18202489745', 'Arun_Belavadi', '2002-08-07', 'M',
'Indian', 745638905, '2018-07-06', '2042-10-07', 3);

select count(*) from driving_licence_info;
select * from driving_licence_info;


insert into DRIVING_LICENSE_TEST_INFO values('KA2009789', 7956, '2024-06-11', 1, 5);
insert into DRIVING_LICENSE_TEST_INFO values('KA2020678', 5795, '2024-11-21', 2, 0);
insert into DRIVING_LICENSE_TEST_INFO values('KA2020456', 5649, '2020-04-03', 2, 4);
insert into DRIVING_LICENSE_TEST_INFO values('KA20241234', 1236, '2024-04-17', 1, 8);
insert into DRIVING_LICENSE_TEST_INFO values('KA2022379', 4976, '2024-03-17', 1, 7);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024258', 9613, '2015-07-30', 1, 9);
insert into DRIVING_LICENSE_TEST_INFO values('KA20246734', 1234, '2024-05-30', 1, 8);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024951', 40679,'2024-03-17', 1, 6);
insert into DRIVING_LICENSE_TEST_INFO values('KA22017457', 4569, '2017-11-28', 1, 7);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024753', 33305, '2024-12-25', 2, 3);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024491', 206, '2015-07-30',1, 9);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024491', 4561, '2018-04-15', 1, 5);
insert into DRIVING_LICENSE_TEST_INFO values('KA2020963', 8792, '2024-07-09', 2, 5);
insert into DRIVING_LICENSE_TEST_INFO values('KA2020679', 2587, '2020-04-03', 1, 9);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024147', 9874, '2024-12-25', 2, 4);
insert into DRIVING_LICENSE_TEST_INFO values('KA2024137', 2589, '2024-11-17', 1, 2);

select * from DRIVING_LICENSE_TEST_INFO;
select count(*) from DRIVING_LICENSE_TEST_INFO;

SELECT 1 FROM llr_info WHERE llr_id = 'KA20078906';


insert into LLR_TEST_INFO(test_id, llr_id, test_date, test_result) values(33305, 'KA18202442168', '2007-10-19', 1)
on duplicate key update test_result = 1;

insert into llr_info values('KA20051234', 'Kishoar', '1985-09-18', 'M', 'India', 497621387, 1, 'B+', '2005-12-09', '2006-01-18')
on duplicate key update  id_proof_provided = 2, phone_number = 97431684123;

insert into llr_info (llr_id, full_name, gender, phone_number, approval_date) values('KA20051234', 'Kishoar', 'M', 
497621387, '2006-01-18') on duplicate key update phone_number = 7483076609, date_of_birth = '1985-12-12';

select * from llr_info;

select 1 from llr_info where llr_id = 'KA20051234';



insert into LLR_TEST_INFO values(6549, 'KA20051234', '2006-01-18', 1, 2, 3, null, 2, null, 200) 
on duplicate key update test_result = 1;

insert into LLR_TEST_INFO (test_id, llr_id) value(6549,  'KA20051234')
on duplicate key update test_result = 1, next_test_date_status = null;

select * from llr_info;
select * from LLR_TEST_INFO;
select * from driving_licence_info;

desc LLR_TEST_INFO;

desc driving_licence_info;

select * from driving_licence_info where dl_id = 'KA2024734';

insert into llr_info values('KA182023645', 'RameshKumar_Malhotra', '1998-11-09', 'M', 'Indian', 7498631254, 1, 'B+', 
'2018-12-27', '2019-01-09') ; 

insert into llr_test_info values(9543, 'KA182023645', '2019-03-09', 2, 2, 5, null, null, null, 559);

insert into driving_licence_info (dl_id, test_id, llr_id) values('KA201646000', 9543, 'KA182023645')
on duplicate key update phone_number = 794613258, issue_date = null,  expiry_date = null;


select  * from llr_info;


select * from driving_licence_info where dl_id = 'KA201646000';


insert into driving_license_test_info(dl_id, test_id) values('KA201646000', 9543);
/*on duplicate key update test_result = 2;*/

insert into driving_license_test_info(dl_id, test_id) values('KA201646000', 9543)
on duplicate key update test_result = 2;

desc driving_license_test_info;



delete from driving_license_test_info where dl_id = 'KA201646000';

select * from driving_license_test_info where dl_id = 'KA201646000';

rollback;

select * from driving_license_test_info;

select * from llr_info;

select * from llr_test_info;

replace into llr_info values('KA182024794613', 'Kamala_SUresh', null, 'F', null, 761325846, 1, 'A+', null, null);

replace into llr_test_info (test_id, llr_id, test_result) values(2034, 'KA18202032649', 2);







































































































































