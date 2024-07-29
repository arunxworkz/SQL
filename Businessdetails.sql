create database Businessdetails;

use Businessdetails;

create table orders(id int, order_name varchar(20), 
cost bigint, order_id int, created_at timestamp, 
created_by varchar(20), modified_at timestamp, modified_by varchar(20),
primary key(order_id));

create table payment(id int, price bigint, payment_id int primary key, 
order_id int, payment_status varchar(20), 
created_at timestamp, 
created_by varchar(20), modified_at timestamp, modified_by varchar(20),
foreign key(order_id) references orders(order_id));
desc payment;

create table restrunt(id int, restrunt_name varchar(20), restrunt_id int primary key,
location varchar(20), order_id int, ratings int, payment_id int, created_at timestamp,
created_by varchar(20), modified_at timestamp, modified_by varchar(20), 
foreign key(order_id) references orders(order_id), 
foreign key(payment_id) references payment(payment_id));

create table delivery(id int, person_name varchar(20), mode_of_payment enum('online''cash'),
restaurant_id int, order_id int, created_at timestamp, created_by varchar(20), 
modified_at timestamp, modified_by varchar(20), 
foreign key(restaurant_id) references restrunt(restrunt_id),
foreign key(order_id) references orders(order_id));


<<<<<<< HEAD:Businessdetails.sql
insert into orders values(150, 'watch', 1000, 500, now(), 'Akash', now(), 'Varun');
insert into orders values(115, 'Belt', 500, 550, now(), 'Kamlesh', now(), 'Bharath');
insert into orders values(200, 'Laptop', 50000, 802, now(), 'Microsoft', now(), 'Microsoft');
insert into orders values(802, 'Mobile', 35000, 880, now(), 'Samsumg', now(), 'Samsumg');
insert into orders values(704, 'Bag', 2000, 709, now(), 'Nike', now(), 'Nike');

=======

insert into orders values(150, 'Gobimunchuri', 1000, 500, now(), 'Akash', now(), 'Varun');
insert into orders values(115, 'Alugobi', 500, 550, now(), 'Kamlesh', now(), 'Bharath');
insert into orders values(200, 'Allitems', 50000, 802, now(), 'Microsoft', now(), 'Microsoft');
insert into orders values(802, 'Halfofthemenu', 35000, 880, now(), 'Samsumg', now(), 'Samsumg');
insert into orders values(704, 'Chicken-65,75', 2000, 709, now(), 'Nike', now(), 'Nike');
select * from orders;
>>>>>>> 9377fa370afd3a788b81b807edd451567ea95a85:SQl10.sql

insert into payment values(508, 9000, 53, 550, 'successful', now(), 'Ramesh', now(), 'Suresh');  
insert into payment values(892, 8080, 93, 709, 'unsuccessful', now(), 'Suresh', now(), 'Ramesh');  
insert into payment values(600, 50000, 89, 802, 'successful', now(), 'Rakesh', now(), 'Rahul');  
insert into payment values(700, 5060, 61, 880, 'pending', now(), 'Rahul', now(), 'Rakesh');  
insert into payment values(500, 4500, 81, 500, 'successful', now(), 'Kamala', now(), 'Komal');  

select * from payment;
select * from orders;
insert into restrunt values(50, null, 620, null, 550, 5, 61, now(), null, now(), null);
insert into restrunt values(85, null, 902, 'Raajaginagara', 500, 6, 81, now(), 'Ramesh', now(), 'Rakesh');
insert into restrunt values(70, null, 850, 'Srirampura', 880, 10, 93, now(), 'Suresh', now(), null);
insert into restrunt values(10, null, 750, 'Mejstic', 802, 8, 89, now(), 'Kamalesh', now(), 'KAlmlesh');
insert into restrunt values(84, null, 802, null, 709, 9, 81, now(), null, now(), null);

<<<<<<< HEAD:Businessdetails.sql
select *from restrunt;

alter table delivery modify column mode_of_payment enum('online', 'cash');
insert into delivery values(500, 'Arun', 1, 620, 550, now(), 'Gokul', now(), 'Ganesh');
insert into delivery values(825, 'Shekar', 1, 802, 709, now(), 'Ganesh', now(), 'Gokul');
insert into delivery values(904, 'Likith', 2, 902, 500, now(), 'Krishna', now(), 'Ragav');
insert into delivery values(860, 'Rohan', 1, 750, 802, now(), null , now(), null);
insert into delivery values(900, 'Rakesh', 2, 850, 880, now(), null ,now(), null);
select * from delivery;
=======
desc delivery;
insert into delivery values(50, 'Arun', 1, 620, 550, now(), 'Rahul', now(), 'Rahul');
select * from delivery;
>>>>>>> 9377fa370afd3a788b81b807edd451567ea95a85:SQl10.sql
