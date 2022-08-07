
----------------------------------------------------------------------------
----------------------------------------------------------------------------
---					2. haftanin kodlarini (06 Aug Zaterdag)

----------------------------------------------------------------------------
----------------------------------------------------------------------------
---Odev Movie Filminin kodlari

--create database Movie02

--create table Categories
--(
--	CategoryId int identity(1,1) primary key,
--	CategoryName nvarchar(60) not null
--) 

--Create table Seans
--(
--	SeansId int identity(1,1) primary key,
--	SeansSaat time not null
--)

--Create table Weeks
--(
--	WeekId int identity(1,1) primary key,
--	WeekStart datetime not null,
--	WeekEnd datetime not null
--)

--Create table Saloon
--(
--	SalonId int identity(1,1) primary key,
--	SalonAd  nvarchar(40) not null,
--	SalonKapasite int not null
--)

--Create table Movie
--(
--	MovieId int identity(1,1) primary key,
--	MovieName nvarchar(60) not null,
--	Aciklama nvarchar(60) not null,
--	Sure int not null
--)

--create table CategoryMovie
--(
--	CategoryID int,
--	MovieID int, 
--	primary key(CategoryID, MovieID),
--	constraint fk_category foreign key(CategoryID) references Categories(CategoryId),
--	constraint fk_movie foreign key(MovieID) references Movie(MovieId)
--)

--Create table MovieInfo
--(
--	ID int identity(1,1) primary key,
--	SeansID int,
--	SalonID int,
--	WeeksID int,
--	MovieID int,
--	constraint fk_seans foreign key(SeansID) references Seans(SeansId),
--	constraint fk_salon foreign key(SalonID) references Saloon(SalonId),
--	constraint fk_week foreign key(WeeksID) references Weeks(WeekId),
--	constraint fk_movies foreign key(MovieID) references Movie(MovieId)
--)

