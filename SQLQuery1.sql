create table Colors(
	ColorId int primary key identity(1,1),
	ColorName nvarchar (25),
)
create table Brands(
	BrandId int primary key identity(1,1),
	BrandName nvarchar (25),
)
create table Cars(
	Id int primary key identity(1,1),
	BrandId int,
	ColorId int,
	ModelYear nvarchar(25),
	DailyPrice decimal,
	Descriptions nvarchar(25),
	CarName nvarchar (25),
	foreign key (BrandId) references Brands(BrandId),
	foreign key (ColorId) references Colors(ColorId),
)

insert into Colors(ColorName)
values 
	('Mavi'),
	('Yeşil'),
	('Kırmızı'),
	('Siyah'),
	('Beyaz');

insert into Brands(BrandName)
values
	('Fiat'),
	('Toyoto'),
	('Ford'),
	('Hyundai');

insert into Cars(BrandId,ColorId,ModelYear,DailyPrice,Descriptions)
values
	('1','2','2020','500','Manuel Dizel'),
	('2','3','2010','200','Manuel Benzinli'),
	('3','1','2018','150','Otomatik Dizel'),
	('4','5','2016','300','Otomatik Benzinli');

select*from cars
select*from brands
select*from colors