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
	primary key(UserId),
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
	foreign key (Id) references Brands(BrandId),
	foreign key (CustomerId) references Users(UserId),
);

insert into Rentals (RentalId,Id,CustomerId,RentDate,ReturnDate)
values
	(1,2,3,'2021-01-13','2021-02-10'),
	(2,1,2,'2020-12-17','2021-01-11'),
	(3,3,3,'220-11-07','2020-12-18');

insert into Rentals values (1,2,3,'2021-01-13','2021-02-10');
insert into Rentals values (2,1,2,'2020-12-17','2021-01-11');
insert into Rentals values (3,3,3,'2020-11-07','2020-12-18');

select*from Rentals;