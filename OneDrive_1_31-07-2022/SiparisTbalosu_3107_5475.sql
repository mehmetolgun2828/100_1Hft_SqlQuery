
create database Siparis5475

create table Categories
(
CategoryId int identity(100,1) primary key,
CategoryName nvarchar(60) not null,
CreatedDate date 
)

create table Product
(
ProductId int identity(1,1),
ProductName nvarchar(50) not null,
Price money not null,
Stock int ,
CategoryID int not null,
primary key(ProductId),
constraint fk_categories foreign key(CategoryID) references Categories(CategoryId)

)

create table Orders
(
OrderId int identity(1,1) primary key,
OrderName nvarchar(60) not null
)

Create table OrderProduct
(
OrderID int,
ProductID int,
primary key(OrderID,ProductID),
constraint fk_orders foreign key(OrderID) references Orders(OrderId),
constraint fk_products foreign key(ProductID) references Product(ProductId)

)