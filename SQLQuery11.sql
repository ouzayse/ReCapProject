create table Users(
	UserId int not null,
	FirstName nvarchar(25) null,
	LastName nvarchar(25) null,
	Email nvarchar(25) null,
	Password nvarchar(25),
	primary key (UserId),
);
insert into Users values(1,'Emre','Şahin','sahin.emre@gmail.com','77ese1');
insert into Users values(2,'Zeynep','Yılmaz','zzyılmaz@gmail.com','32165');
insert into Users values(3,'Ahmet0','Saygın','ahmetsg@gmail.com','876465');
insert into Users values(4,'Betül','Aslan','bet21@gmail.com','654325');

create table Customers(
	CustomerId int not null,
	UserId int not null,
	CompanyName nvarchar(25) null,
	primary key(CustomerId),
	foreign key(UserId) references Users(UserId),
);
insert into Customers values(1,1,'Şahin Rent A Car');
insert into Customers values(2,2,'Yılmaz Oto');
insert into Customers values(3,3,'Saygın Oto');
insert into Customers values(4,4,'Aslan Rent ACar');

create table Rentals(
	RentalId int not null,
	Id int not null,
	CustomerId int not null,
	RentDate date not null,
	ReturnDate date null,
	primary key (RentalId),
	foreign key (Id) references Cars(Id),
	foreign key (CustomerId) references Customers(CustomerId),
);

insert into Rentals values(1,2,2,'2021-01-13','2021-02-10');
insert into Rentals values(2,1,1,'2020-12-17','2021-01-11');
insert into Rentals values(3,3,3,'2020-11-07','2020-12-18');
insert into Rentals values(4,4,4,'2021-02-15','');

insert into Rentals values (1,2,3,'2021-01-13','2021-02-10');
insert into Rentals values (2,1,2,'2020-12-17','2021-01-11');
insert into Rentals values (3,3,3,'2020-11-07','2020-12-18');

select*from Rentals;

create table Colors(
	ColorId int not null,
	ColorName nvarchar (25)null,
	primary key(ColorId),
);
create table Brands(
	BrandId int not null,
	BrandName nvarchar (25)null,
	primary key(BrandId),
)
create table Cars(
	Id int not null,
	BrandId int not null,
	ColorId int not null,
	ModelYear nvarchar(25)null,
	DailyPrice decimal not null ,
	Descriptions nvarchar(25) null,
	CarName nvarchar (25) null,
	primary key (Id),
	foreign key (BrandId) references Brands(BrandId),
	foreign key (ColorId) references Colors(ColorId),
)

insert into Colors values (1,'Mavi');
insert into Colors values (2,'Yeşil');
insert into Colors values(3,'Siyah');
insert into Colors values(4,'Beyaz');

insert into Brands values(11,'Fiat');
insert into Brands values(22,'Toyoto');
insert into Brands values(33,'Ford');
insert into Brands values(44,'Hyundai');

insert into Cars values (1,11,1,'2021',500,'Manuel Dizel','Fiat Renault');
insert into Cars values	(2,22,2,'2010',200,'Manuel Benzinli','Toyoto Corolla');
insert into Cars values	(3,33,3,'2018',150,'Otomatik Dizel','Ford Focus');
insert into Cars values	(4,44,4,'2016',300,'Otomatik Benzinli','Hyundai i20');
