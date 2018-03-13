use master
go

create database MYData
on
(
	name='MYData',
	filename='F:\Project\SeeYou\Data\MYData'
)
go

use MYData
go
--用户账号表
create table UserPage
(
	UserId nvarchar(225) primary key not null,
	UserName nvarchar(20) unique not null,
	UserPhone nvarchar(14) unique not null,
	UserPassword nvarchar(30) not null,
	UserLevel int default(0),
)
go

--用户信息表
create table UserMessage
(
	UserId nvarchar(225) primary key not null,
	UName nvarchar(30) not null,
	UAge int check(UAge>0 and UAge<120),
	UGender int check(UGender=0 or UGender=1) not null,
	UEmail nvarchar(225) not null,
	UPlace nvarchar(10) not null,
	UIDCard nvarchar(18) not null,
	UIDAddress nvarchar(60) not null,
	UAddress nvarchar(60),
	PhotoURL nvarchar(225)
)
go
--安全操作表
create table SafeOperation
(
	UserId nvarchar(225) not null,
	SContent nvarchar(225) not null,
	STime DateTime not null
)
go
--反馈表
create table FeedBack
(
	UserId nvarchar(225) not null,
	FContent nvarchar(225) not null,
	FTime DateTime not null,
	FResolve nvarchar(225)
)
go

create table Question
(
	QId int primary key identity(1,1),
	UserId nvarchar(225) not null,
	QContent Nvarchar(225)
)
go

create table Answer
(
	QId int not null,
	UserId nvarchar(225) not null,
	AContent nvarchar(Max) not null
)
go