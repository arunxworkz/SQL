create database HealthCare;

use HealthCare;

create  table patients(patient_id int, f_name varchar(20),
date_if_birth date, gender varchar(2), ph_no bigint, 
constraint primary key (patient_id));

create table doctor(doctor_id int, name varchar(20), 
specilization varchar(20), phno bigint, constraint primary key(doctor_id));


create table appointments(appointments_id int, patient_id int,
doctor_id int, appointmentate datetime, reason varchar(20), 
constraint foreign key(patient_id) references patients(patient_id),
constraint foreign key(doctor_id) references doctor(doctor_id));

alter table appointments modify column appointments_id int
primary key;

desc appointments;

create table medicalrecords(record_id int, patient_id int, 
doctor_id int, record_date datetime, constraint primary key(record_id)
,constraint foreign key(patient_id) references patients(patient_id),
constraint foreign key(doctor_id) references doctor(doctor_id)); 


alter table patients rename column f_name to name;
insert into patients values(105, 'Prakash', '2015-02-09', 'M', 860337698);
insert into patients values(130, 'Ramesh', '2003-10-21', 'M', 592408209);
insert into patients values(050, 'Vimala', '2011-08-09', 'F', 765432898);
insert into patients values(089, 'Ashish', '2015-10-09', 'M', null);
insert into patients values(109, 'Akshara', '1995-10-02', 'M', 853045240);
insert into patients values(120, 'Akashy', '2004-01-31', 'M', 743290363);
insert into patients values(502, 'Kamala', '2008-12-30', 'F', 862048972);
insert into patients values(030, null, '2016-09-06', null, null);
insert into patients values(013, 'Akash', '2013-08-19', 'M', 722179059);
insert into patients values(106, 'Rohan', '2002-09-11', 'M', 552407854);
insert into patients values(203, 'Rahul', '2003-11-21', 'M', null);
insert into patients values(520, 'Komal', null, 'M', 7534065398);
insert into patients values(500, 'Kamlesh', '2002-10-26', 'M', 886234962);
insert into patients values(202, 'Rakesh', null, 'M', null);
insert into patients values(307, 'Vinay', '2002-06-30', 'M', 763592735);
select * from patients;
select count(*) from patients;


insert into doctor values(010, 'Pushapa','Cardiologist', 732542936); 
insert into doctor values(023, 'Subrumanaya','Neurologist', 732972936); 
insert into doctor values(203, 'Ganesh','Orthopedic Surgeon', 624642936); 
insert into doctor values(016, 'Kiran','Cardiologist', 738942936); 
insert into doctor values(052, 'Kiran','Cardiologist', 738942936); 
insert into doctor values(032, 'Ramesh','Skin', 972542936); 
insert into doctor values(100, 'Kilash','Neurologist', 692542936); 
insert into doctor values(205, 'Kushal','Pediatrician', 7328962936); 
insert into doctor values(103, 'Kiran K','Endocrinologist', 7325429103); 
insert into doctor values(018, 'Kumar','Psychiatrist ', 732542796); 
insert into doctor values(017, 'Keshav','Gynecologist ', 734912936); 
insert into doctor values(019, 'Kamal','Pathologist ', 739316936); 
insert into doctor values(020, null, 'Nephrologist', null);
insert into doctor values(031, 'Joshi', 'Pathologist', 837450997 );
insert into doctor values(060, 'Prajval', 'Allergist ', 348975603);

select * from doctor;
select count(*) from doctor;

commit;


insert into appointments values(010,13,16,'2024-10-07 13:09:00', 'Routine check-up');
insert into appointments values(011,50,10,'2020-10-30 11:30:00', 'Follow-uponbloodtest');
insert into appointments values(013,89,17,'2024-01-20 10:45:00','back pain');
insert into appointments values(024,109,52,'2020-10-02 13:02:01',null);
insert into appointments values(026,30,19,'2015-10-21 9:00:00','Skinrashevaluation');
insert into appointments values(045,120,20,'2016-11-01 11:00:00','Pregnancycheck-up');
insert into appointments values(016,106,23,'2019-03-07 15:20:00','Bloodpressure');
insert into appointments values(017,130,31,'2021-10-02 17:10:19','Nutritionanddiet');
insert into appointments values(050,202,32,null,null);
insert into appointments values(061,202,52,'2023-10-26 16:35:01','Mentalhealth');
insert into appointments values(065,203,60,'2024-02-18 14:58:00','migraine');
insert into appointments values(102,307,100,'2022-06-06 15:40:00','Annualphysical');
insert into appointments values(104,307,103,null,null);
insert into appointments values(103,500,203,'2013-10-11 10:00:00','Pregnancy');
insert into appointments values(114,502,205,'2014-02-22 16:05:00','Pregnancy');
insert into appointments values(120,520,18,null,'Post-operative');


select * from appointments;
select count(*) from appointments;

insert into medicalrecords values(103,13,16,'2024-10-07');
insert into medicalrecords values(105,50,10,'2020-10-30');
insert into medicalrecords values(110,89,17,'2024-01-20');
insert into medicalrecords values(152,30,19,'2015-10-21');
insert into medicalrecords values(320,105,18,'2016-2-03');
insert into medicalrecords values(520,105,19,'2020-05-06');
insert into medicalrecords values(130,109,23,'2023-08-16');
insert into medicalrecords values(460,120,31,'2024-02-15');
insert into medicalrecords values(420,130,32,'2020-08-16');
insert into medicalrecords values(230,307,52,'2020-09-21');
insert into medicalrecords values(120,500,60,'2020-08-08');
insert into medicalrecords values(131,502,100,'2019-12-10');
insert into medicalrecords values(145,502,103,'202-06-06');

select count(*) from medicalrecords;
select * from medicalrecords;

select * from patients as p inner join  appointments as a on p.patient_id = a.patient_id;

/* inner join is - intersection - here columns from both the tables must be same (even in case of data type)*/

select * from patients as p inner join medicalrecords as m on p.patient_id = m.patient_id;
select * from doctor as d inner join appointments as a on d.doctor_id = a.doctor_id;
select * from doctor as d inner join medicalrecords as m on d.doctor_id = m.doctor_id;

select * from appointments a inner join medicalrecords as m on a.patient_id = m.patient_id;
select * from appointments a inner join medicalrecords as m on a.doctor_id = m.doctor_id;


select * from patients as p left join appointments a on p.patient_id = a.appointments_id;

/*left join - data which are present in both table are printed along with the remaining data of the left table 
which is not in th right table, those are indicated as null */

select * from patients as p left join medicalrecords as m on p.patient_id = m.patient_id;
select * from doctor as d left join medicalrecords as m on d.doctor_id = m.doctor_id;
select * from doctor as d left join appointments as a on d.doctor_id = a.doctor_id;


select * from patients as p right join medicalrecords as m on p.patient_id = m.doctor_id;
select * from patients as p right join medicalrecords as m on p.patient_id = m.patient_id;
select * from patients as p right join appointments as a on p.patient_id = a.patient_id;
select * from doctor as d right join medicalrecords as m on d.doctor_id = m.doctor_id;
select * from doctor as d right join appointments as a on d.doctor_id = a.doctor_id;
select * from appointments as a right join medicalrecords as m on a.doctor_id = m.doctor_id 
and a.patient_id = m.patient_id;
select * from appointments as a right join medicalrecords as m on a.doctor_id = m.doctor_id ;


select * from patients as p inner join medicalrecords as m on p.patient_id = m.patient_id
left join doctor as d on m.doctor_id = d.doctor_id;


select * from patients as p inner join medicalrecords as m on p.patient_id = m.patient_id
right join doctor as d on m.doctor_id = d.doctor_id;




