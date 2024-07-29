
use sql10;

create table orders(id int, order_name varchar(20), 
cost bigint, order_id int, created_at varchar(20), 
created_by varchar(20), mpdified_at varchar(20), modified_by varchar(20),
primary key(order_id));
alter table orders modify column created_at timestamp;
alter table orders modify column created_by varchar(20);
alter table orders modify column mpdified_at timestamp;
alter table orders rename column mpdified_at to modified_at;
desc orders;

create table payment(id int, price bigint, payment_id int primary key, 
order_id int, payment_status varchar(20), 
created_at varchar(20), 
created_by varchar(20), mpdified_at varchar(20), modified_by varchar(20),
foreign key(order_id) references orders(order_id));
desc payment;
alter table payment modify column created_at timestamp;
alter table payment modify column mpdified_at timestamp;
alter table payment rename column mpdified_at to modified_at;
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



insert into orders values(150, 'watch', 1000, 500, now(), 'Akash', now(), 'Varun');
insert into orders values(115, 'Belt', 500, 550, now(), 'Kamlesh', now(), 'Bharath');
insert into orders values(200, 'Laptop', 50000, 802, now(), 'Microsoft', now(), 'Microsoft');
insert into orders values(802, 'Mobile', 35000, 880, now(), 'Samsumg', now(), 'Samsumg');
insert into orders values(704, 'Bag', 2000, 709, now(), 'Nike', now(), 'Nike');
select * from orders;

insert into payment values(508, 9000, 53, 550, 'successful', now(), 'Ramesh', now(), 'Suresh');  
insert into payment values(892, 8080, 93, 709, 'unsuccessful', now(), 'Suresh', now(), 'Ramesh');  
insert into payment values(600, 50000, 89, 802, 'successful', now(), 'Rakesh', now(), 'Rahul');  
insert into payment values(700, 5060, 61, 880, 'pending', now(), 'Rahul', now(), 'Rakesh');  
insert into payment values(500, 4500, 81, 500, 'successful', now(), 'Kamala', now(), 'Komal');  
select * from payment;

desc restrunt;
insert into restrunt values(50, null, 620, null, 550, 5, 61, now(), null, now(), null);
insert into restrunt values(85, null, 902, 'Raajaginagara', 500, 6, 81, now(), 'Ramesh', now(), 'Rakesh');
insert into restrunt values(70, null, 850, 'Srirampura', 880, 10, 93, now(), 'Suresh', now(), null);
insert into restrunt values(10, null, 750, 'Mejstic', 802, 8, 89, now(), 'Kamalesh', now(), 'KAlmlesh');
insert into restrunt values(70, null, 802, null, 702, 9, 81, now(), null, now(), null);
select * from restrunt;

desc delivery;
insert into delivery values(50, 'Arun', 1, 620, 550, now(), 'Rahul', now(), 'Rahul');
select * from delivery;