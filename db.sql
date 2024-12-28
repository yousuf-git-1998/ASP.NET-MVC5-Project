Create table Sellers
(
	SellerId int identity primary key, 
	SellerName nvarchar(50) not null, 
	Phone nvarchar(50) not null
)
go 

Create table Products
(
	ProductId int identity primary key, 
	ProductName nvarchar(50) not null, 
	Price money not null, 
	MfgDate date not null, 
	InStock bit, 
	Picture nvarchar(50) not null
)
go 

Create table Sales
(
	SalesId int identity primary key, 
	[Date] date not null, 
	SellerId int not null references Sellers(SellerId), 
	Quantity int not null, 
	ProductId int not null references Products(ProductId)
)
go 