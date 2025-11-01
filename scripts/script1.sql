create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(200),
	precio money not null,
    stock int not null,
	constraint productos_pk primary key(codigo)
)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(1,'Pañuelos','Aroma a menta',2.24,45)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(2,'Hojas','De cuadros',3.50,23)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(3,'Manteles','Absorbentes para cocina',5.58,96)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(4,'Cuadernos','Pasta dura',6.72,67)

insert into productos(codigo,nombre,descripcion,precio,stock)
values(5,'Pegamento',1.45,71)

insert into productos(codigo,nombre,precio,stock)
values(6,'Toallas',7.89,10)

insert into productos(codigo,nombre,precio,stock)
values(7,'Resaltadores',5.62,17)

insert into productos(codigo,nombre,precio,stock)
values(8,'Cartulinas',2.37,28)

select * from productos
