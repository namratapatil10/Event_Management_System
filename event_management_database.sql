create database event_management;
use event_management;
 create table admin_signup_tbl
 (
 sid int not null primary key auto_increment,
 Aname varchar(50),
 email varchar(50),
 address nvarchar(200),
 contact bigint(10),
 pass nvarchar(10),
 cpass nvarchar(10)
 );
 create table add_event_tbl
 (
 Eid int not null primary key auto_increment,
 Ename varchar(100),
 image nvarchar(500),
 discount float,
 description nvarchar(500)
 );
 create table add_food_tbl
 (
 Fid int not null primary key auto_increment,
 Fname varchar(100),
 image nvarchar(500),
 Fprice float,
 description nvarchar(500)
 );
 create table add_beverage_tbl
 (
 Bid int not null primary key auto_increment,
 Bname varchar(100),
 image nvarchar(500),
 Bprice float,
 description nvarchar(500)
 );
 desc add_beverage_tbl;
 create table add_theme_tbl
 (
 Tid int not null primary key auto_increment,
 Tname varchar(100),
 image nvarchar(500),
 Tprice float,
 description nvarchar(500)
 );
 create table add_service_tbl
 (
 Serid int not null primary key auto_increment,
 Sname varchar(100),
 image nvarchar(500),
 Sprice float,
 description nvarchar(500)
 );
 create table user_signup_tbl
 (
 Usid int not null primary key auto_increment,
 Uname varchar(50),
 email varchar(50),
 address nvarchar(200),
 contact bigint(10),
 pass nvarchar(10),
 cpass nvarchar(10)
 );
 create table view_event_tbl
 (
 Eid int not null primary key auto_increment,
 Ename varchar(100),
 image nvarchar(500),
 discount float,
 description nvarchar(500)
 );
 create table view_food_tbl
 (
 Fid int not null primary key auto_increment,
 Fname varchar(100),
 image nvarchar(500),
 Fprice float,
 description nvarchar(500)
 );
create table view_beverage_tbl
 (
 Bid int not null primary key auto_increment,
 Bname varchar(100),
 image nvarchar(500),
 Bprice float,
 description nvarchar(500),
 quantity int(9)
 );
 desc view_beverage_tbl;
create table view_theme_tbl
 (
 Tid int not null primary key auto_increment,
 Tname varchar(100),
 image nvarchar(500),
 Tprice float,
 description nvarchar(500)
 );
 create table view_service_tbl
 (
 Serid int not null primary key auto_increment,
 Sname varchar(100),
 image nvarchar(500),
 Sprice float,
 description nvarchar(500),
 quantity int(9),
  Amount float
 );
 create table booking_tbl
 (
 boid int not null primary key auto_increment,
 user_id int(10),
 Uname varchar(50),
 contact bigint(10),
 address nvarchar(200),
 Ename varchar(100),
 Tname varchar(100),
 Tprice float,
 Fname varchar(100),
 Bname varchar(100),
 Sname varchar(100),
 Fprice float,
 Bprice float,
 Sprice float,
 Quantity bigint(10),
 Bdate date,
 Total_Amount float
 );
 create table payment_upi
 (
 UPIid int not null primary key auto_increment,
 UId nvarchar(100),
 UPIno int(9),
 Amount float
 );
 create table payment_credit_debit
 (
 Chname varchar(100),
 Cno bigint(20),
 CVV int(9),
 Amount float,
 Exdate date
 );
 create table feedback_tbl
 (
 feid int not null primary key auto_increment,
 Uname varchar(50),
 contact bigint(10),
 message nvarchar(500)
 );
 truncate admin_signup_tbl;
 truncate user_signup_tbl;
 truncate add_theme_tbl;
 truncate add_event_tbl;
 truncate add_food_tbl;
 truncate add_beverage_tbl;
 truncate add_service_tbl;
 truncate user_signup_tbl;
 truncate booking_tbl;
 truncate payment_credit_debit;
 truncate payment_upi;
 truncate feedback_tbl