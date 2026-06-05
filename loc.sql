create table restaurants(
restaurants_id int primary key,
name varchar(50) not null,
review varchar(100),
location varchar(100)
);
select * from restaurants;
insert into restaurants(restaurants_id,name,review,location)
values(93,'Sahi','good','Delhi'),
(64,'Biriyani Hub','Excelent','Kolkata'),
(97,'Biriyani Banqet','Excelent','Mumbai');
select name from restaurants where location='Delhi';
