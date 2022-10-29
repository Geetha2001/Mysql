CREATE DATABASE product;
USE product;

create table  Orders(order_id int, customer_id int,
 products varchar(30) unique,
 price int,selling_price int,
 extra_discount int,
 primary key(order_id,customer_id));
 
 insert into Orders values(1,6,'papers',100,80,20);
insert into Orders values(2,4,'book',500,400,100);
insert into Orders values(3,3,'pen',100,80,20);
insert into Orders values(4,9,'coomb',80,75,5);
insert into Orders values(5,5,'powder',280,250,30);
insert into Orders values(6,2,'iron box',1000,900,100);
insert into Orders values(7,1,'shampoo',300,250,50);
insert into Orders values(8,7,'watch',2000,1900,100);
insert into Orders values(9,8,'kurta',800,750,50);
insert into Orders values(10,10,'shoes',700,600,100);

select * from Orders;

 alter table Orders Add no_of_items varchar(50) ;
 alter table Orders Add size varchar(50) ;
 alter table Orders Add color varchar(50) ;
  alter table Orders Add reviews varchar(50) ;
  
   select * from Orders where order_id=1;
   
   update Orders set no_of_items = 1 WHERE order_id = 1;
   update Orders set no_of_items = 2 WHERE order_id = 2;
   update Orders set no_of_items = 1 WHERE order_id = 3;
   update Orders set no_of_items = 1 WHERE order_id = 4;
   update Orders set no_of_items = 3 WHERE order_id = 5;
   update Orders set no_of_items = 3 WHERE order_id = 6;
   update Orders set no_of_items = 1 WHERE order_id = 7;
   update Orders set no_of_items = 2 WHERE order_id = 8;
   update Orders set no_of_items = 1 WHERE order_id = 9;
   update Orders set no_of_items = 1 WHERE order_id = 10;
   
      update Orders set size = 'M' WHERE order_id = 1;
	  update Orders set size = 'M' WHERE order_id = 2;
      update Orders set size = 'M' WHERE order_id = 3;
      update Orders set size = 'M' WHERE order_id = 4;
      update Orders set size = 'M' WHERE order_id = 5;
      update Orders set size = 'M' WHERE order_id = 6;
      update Orders set size = 'M' WHERE order_id = 7;
      update Orders set size = 'M' WHERE order_id = 8;
      update Orders set size = 'M' WHERE order_id = 9;
	  update Orders set size = 'M' WHERE order_id = 10;
      
      select LTRIM(order_id) from Orders;
select LTRIM(customer_id) from Orders;
select LTRIM(products) from Orders;
select LTRIM(price) from Orders;
select LTRIM(selling_price) from Orders;
select LTRIM(extra_discount) from Orders;
select LTRIM(no_of_items) from Orders;
select LTRIM(size) from Orders;
select LTRIM(reviews) from Orders;
select LTRIM(color) from Orders;

select RTRIM(order_id) from Orders;
select RTRIM(customer_id) from Orders;
select RTRIM(products) from Orders;
select RTRIM(price) from Orders;
select RTRIM(selling_price) from Orders;
select RTRIM(extra_discount) from Orders;select LTRIM(no_of_items) from Orders;
select RTRIM(size) from Orders;
select RTRIM(reviews) from Orders;
select RTRIM(color) from Orders;


select * from Orders;
--------------------------------------------------------------------------------------------------------
create table  Customers(order_id int, 
customer_id int,
 first_name varchar(30) unique, 
 last_name varchar(30),
 age int, 
 country varchar(40),
 primary key(order_id,customer_id));
 
 
insert into Customers values(1,6,'sahana', 'c',24,'india');
insert into Customers values(2,4,'anu', 'B',24,'india');
insert into Customers values(3,3,'pooja', 'V',24,'india');
insert into Customers values(4,9,'muskan', 'A',24,'india');
insert into Customers values(5,5,'sneha', 'L',24,'india');
insert into Customers values(6,2,'mahananda', 'B',24,'india');
insert into Customers values(7,1,'vishala', 'K',24,'india');
insert into Customers values(8,7,'swati', 'J',24,'india');
insert into Customers values(9,8,'navya', 'G',24,'india');
insert into Customers values(10,10,'shree', 'H',24,'india');

 alter table Customers Add city varchar(50) ;
  alter table Customers Add location varchar(50) ;

update Customers set city = 'Mudhol' WHERE order_id = 10;
	  update Customers set city = 'Mudhol' WHERE order_id = 9;
	  update Customers set city = 'Banglore' WHERE order_id = 8;
	  update Customers set city = 'Bagalkot' WHERE order_id = 7;
	  update Customers set city = 'ballary' WHERE order_id = 6;
	  update Customers set city = 'Mudhol' WHERE order_id = 5;
	  update Customers set city = 'Davangere' WHERE order_id = 4;
	  update Customers set city = 'rampur' WHERE order_id = 3;
	  update Customers set city = 'Badami' WHERE order_id = 2;
	  update Customers set city = 'Mudhol' WHERE order_id = 1;

select * from Customers;

select length(order_id) from Customers;
select length(customer_id) from Customers;
select length(first_name) from Customers;
select length(age) from Customers;
select length(country) from Customers;
select length(last_name) from Customers;
select length(city) from Customers;
select length(location) from Customers;


select LTRIM(order_id) from Customers;
select LTRIM(customer_id) from Customers;
select LTRIM(first_name) from Customers;
select LTRIM(age) from Customers;
select LTRIM(country) from Customers;
select LTRIM(last_name) from Customers;
select LTRIM(city) from Customers;
select LTRIM(location) from Customers;


select RTRIM(order_id) from Customers;
select RTRIM(customer_id) from Customers;
select RTRIM(first_name) from Customers;
select RTRIM(age) from Customers;
select RTRIM(country) from Customers;
select RTRIM(last_name) from Customers;
select RTRIM(city) from Customers;
select RTRIM(location) from Customers;

--------------------------------------------------------------------------------------------------------------------------

create table  Buyer(order_id int,
 customer_id int,
 first_name varchar(30) unique,
 last_name varchar(30),
 age int,
 country varchar(40),
 foreign key(order_id,customer_id) references Orders(order_id,customer_id));

insert into Buyer values(1,6,'sahana', 'c',24,'india');
insert into Buyer values(2,4,'anu', 'B',24,'india');
insert into Buyer values(3,3,'pooja', 'V',24,'india');
insert into Buyer values(4,9,'muskan', 'A',24,'india');
insert into Buyer values(5,5,'sneha', 'L',24,'india');
insert into Buyer values(6,2,'mahananda', 'B',24,'india');
insert into Buyer values(7,1,'vishala', 'K',24,'india');
insert into Buyer values(8,7,'swati', 'J',24,'india');
insert into Buyer values(9,8,'navya', 'G',24,'india');
insert into Buyer values(10,10,'shree', 'H',24,'india');

select * from Buyer;















select RTRIM(last_name) from Customers;

select length(customer_id) from Orders;
select LTRIM(products) from Orders;
select RTRIM(products) from Orders;

show tables;








