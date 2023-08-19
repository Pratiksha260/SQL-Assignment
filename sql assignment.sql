create database Candidates;
use Candidates;
create table technology(id int, technology varchar(20));
insert into technology values(1,"DS"),
(1,"Tableau"),
(1,"SQL"),
(2,"R"),
(2,"Power BI"),
(1,"PYTHON");
 select * from technology;
 
 select id from technology where technology in ("DS","PYTHON","Tableau","SQL") group by id having count(*) =4;
 
 
 
 
 create database Ecommerce;
use Ecommerce;
create table product_info(Product_id int,
 Product_name varchar(20));
 insert product_info values(1001,"Blogs");
 insert product_info values(1002,"Youtube");
insert product_info values(1003,"Education");
 
select * from product_info;

create table product_info_likes(User_id int,Product_id int,
liked_date date);

insert product_info_likes values(1,1001,"2023-08-19");
insert product_info_likes values(2,1003,"2023-01-18");
select * from product_info_likes;
select Product_id from product_info where Product_id  not in(select Product_id from product_info_likes);