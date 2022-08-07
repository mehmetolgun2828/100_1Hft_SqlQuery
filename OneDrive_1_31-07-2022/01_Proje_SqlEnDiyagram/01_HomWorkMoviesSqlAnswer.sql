Create database Movies_01

Create table Movies
(
	MovieId int identity(1,1) primary key,
	MovieName nvarchar(60) not null,
	Descript nvarchar(80) not null,
	Duration int
)

Create table Categories
(	
	CategoryId int identity(1,1) primary key,
	CategoryName nvarchar(40) not null,
)

Create table Seans
(
	SeansId int identity(1,1) primary key,
	Seans Time
)

Create table Saloons
(
	SaloonId int identity(1,1) primary key,
	SaloonName nvarchar(40),
	SaloonCap int
)

Create table Weeks
(
	WeekId int identity(1,1) primary key,
	WeekNumber nvarchar(40),
	WeekFirst date,
	WeekLast date
)

Create table MovieToCategory
(
	MovieID int,
	CategoryID int
	Primary key(MovieID,CategoryID),
	constraint fk_movies foreign key(MovieID) references Movies(MovieId), 
	constraint fk_categories foreign key(CategoryID) references Categories(CategoryId)
)

create table ForeignToMovie
(   
	ForeignToMovieId int identity(100,1) primary key,
	MovieID int,
	SeansID int,
	WeekID int, 
	SaloonID int,
	constraint fk_movie foreign key(MovieID) references Movies(MovieId),
	constraint fk_sean foreign key(SeansID) references Seans(SeansId),
	constraint fk_week foreign key(WeekID) references Weeks(WeekId)
)

alter table ForeignToMovie
 add constraint fk_saloon foreign key(SaloonID) references Saloons(SaloonId)

