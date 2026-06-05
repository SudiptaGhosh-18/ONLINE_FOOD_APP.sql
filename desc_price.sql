create table menu_item(
menu_id int primary key,
menu varchar(50) unique,
price numeric
);
select * from menu_item;
insert into menu_item(menu_id,menu,price)
values(493,'Paneer Chilli',150),
(674,'Chicken Biriyani',500),
(897,'Mottun Biriyani',720),
(784,'BURGER',100),
(567,'Pizza',350),
(675,'Veg Thali',950),
(894,'Non-Veg Thali',980);

select menu from menu_item 
order by price DESC
limit 3;
