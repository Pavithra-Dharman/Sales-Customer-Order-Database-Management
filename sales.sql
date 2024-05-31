use zoho;
create table salesman
(
salesman_id int,
name varchar(50),
city varchar(50),
commission float
);
insert into salesman values
(5001,"james hoog","new york",0.15),
(5002,"nail knite","paris",0.13),
(5005,"pit alex","london",0.11),
(5006,"mc lylon","paris",0.14);
insert into salesman(salesman_id,name,commission)
values (5003,"lauson hen",0.12);
insert into salesman values
(5007,"paul adam","rome",0.13);
desc salesman;
select *from salesman;
truncate salesman;
alter table salesman modify column commission float; 


create table customer
(
customer_id int,
customer_name varchar(50),
city varchar(50),
grade int
);
insert into customer values
(3002,"nick","nyc",100),
(3005,"graham","california",200);
insert into customer(customer_id,customer_name,city)
values(3001,"brad","london");
insert into customer values
(3004,"fabian","paris",300),
(3007,"brad davis","nyc",200),
(3009,"geoff","berlin",100),
(3008,"julian","londan",300),
(3003,"jozy","moncow",200);
select * from customer;


  CREATE TABLE `Order` (
    order_no INT,
    purch_amt FLOAT,
    order_date DATE,
    customer_id INT,
    salesman_id INT
);

insert into `order` values
(70001,150.5,'2016-10-05',3005,5002);
insert into `order`(order_no,purch_amt,order_date,customer_id)
values
(70009,270.65,'2016-09-10',3001);
insert into `order` values
(70002,65.26,'2016-10-05',3002,5001);
insert into `order`(order_no,purch_amt,order_date,customer_id)
values
(70004,10.5,'2016-08-17',3009);
insert into `order` values
(70007,948.5,'2016-09-10',3005,5002),
(70005,2400.6,'2016-07-27',3007,5001),
(70008,5760,'2016-09-10',3002,5001),
(70010,1983.43,'2016-10-10',3004,5006);
insert into `order`(order_no,purch_amt,order_date,customer_id)
values
(70003,2480.4,'2016-10-10',3009);
insert into `order` values
(70012,250.45,'2016-06-27',3008,5002),
(70011,75.29,'2016-06-27',3003,5007);
select *from `order`;

select name,commission from salesman;
select name,city from salesman where city="paris";
select * from customer where grade=200;
select order_no,order_date,purch_amt 
from
`order`
where salesman_id=5001;
select * from salesman where commission
between 0.12 and 0.14;
select * from salesman where name like "%j___s%";
select sum(purch_amt) from `order`;
select max(grade)  as highest_grade,city
 from customer group by city;
 select * from customer where city="nyc" or grade<=100;
select * from customer where customer_name like "%n";
select count(salesman_id)
from `order`;
select max(purch_amt),customer_id from `order` 
group by customer_id;
SELECT *
FROM Customer
WHERE Grade IS NULL
   AND Customer_ID NOT IN (
       SELECT Customer_ID
       FROM Customer
       WHERE Grade IS NOT NULL
   );






