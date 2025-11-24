--CUENTAS
--primero borro
delete from cuentas
--creo la tabla que se relaciona
create table usuario(
    cedula char(5) not null,
    nombre varchar(25) not null,
    apellido varchar(25) not null,
    tipo_cuenta varchar(20),
    limite_credito decimal(10,5),
    constraint usuario_pk primary key(cedula)
)
--doy foreign key
alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

--inserto en la nueva tabla para que tenga datos
insert into usuario(cedula,nombre,apellido)
values('17548','Ana','Plaza');
insert into usuario(cedula,nombre,apellido)
values('17549','María','Plaza');
insert into usuario(cedula,nombre,apellido)
values('17550','Roberto','Vásquez');
insert into usuario(cedula,nombre,apellido)
values('17551','Rosa','Borja');
insert into usuario(cedula,nombre,apellido)
values('17552','Carolina','Oscullo')

--pruebas
select * from cuentas
select * from usuario


--CLIENTES
--primero borro
delete from clientes

alter table clientes
drop column edad

--creo la tabla que se relaciona
create table compras(
    id_compra int not null,
    cedula char(10) not null,
    fecha_compra date not null,
    monto decimal(10,2) not null,
    constraint compras_pk primary key(id_compra)
)
--doy foreign key
alter table compras --la tabla que tiene muchos
add constraint compras_clientes_fk
foreign key (cedula) --cedula pertenece a tabla compras (en que columna estara dentro de esa tabla)
references clientes(cedula) -- cedula pertence a clientes (donde esta la referencia o fk)

--inserto en la nueva tabla para que tenga datos
insert into clientes(cedula,nombre,apellido)
values('1722200001','Ana','Plaza');
insert into clientes(cedula,nombre,apellido)
values('9522200023','Carolina','Moposita');
insert into clientes(cedula,nombre,apellido)
values('1722200234','Alex','Vargas');
insert into clientes(cedula,nombre,apellido)
values('9222202465','Monica','Herrera');
insert into clientes(cedula,nombre,apellido)
values('1722234554','Santiago','Vásquez');


--pruebas
select * from clientes
select * from compras

--PRODUCTOS
--primero borro
delete from productos

--creo la tabla que se relaciona
create table ventas(
    id_venta int not null,
    codigo_producto int not null,
    fecha_venta date not null,
    cantidad int,
    constraint ventas_pk primary key(id_venta)
)
--doy foreign key
alter table ventas
add constraint ventas_productos_fk
foreign key (codigo_producto) 
references productos(codigo)

--inserto en la nueva tabla para que tenga datos
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (1,'Mantel','Seca todo',3.50,10);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (2,'Shampoo','Savital',2.50,20);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (3,'Deja','Deja',1.50,30);
insert into productos(codigo,nombre,descripcion,precio,stock) 
values (4,'Manteca','De chancho',3.0,40);
insert into productos(codigo,nombre,precio,stock) 
values (5,'Cera',2.50,50);


--pruebas
select * from productos
select * from ventas

--VIDEOJUEGOS
--primero borro
delete from videojuegos

--creo la tabla que se relaciona
create table plataformas(
    id_plataforma int not null,
    nombre_plataforma varchar(50) not null,
    codigo_videojuego int,
    constraint plataformas_pk primary key(id_plataforma)
)
--doy foreign key
alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego) 
references videojuegos(codigo) 

--inserto en la nueva tabla para que tenga datos
insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'Guerra', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'God of war', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Death', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'Guerra', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

--pruebas
select * from productos
select * from plataformas

--ESTUDIANTES
--primero altero y agrego columna
alter table estudiantes
add column codigo_profesor int

delete from estudiantes

--creo la tabla que se relaciona
create table profesores(
    codigo int not null,
    nombre varchar(50) not null,
    constraint profesores_pk primary key(codigo)
)
--doy foreign key
alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor) 
references profesores(codigo) 

--inserto en la nueva tabla para que tenga datos
insert into profesores(codigo, nombre)
values(63, 'Jose Luis');
insert into profesores(codigo, nombre)
values(64, 'Francisco');
insert into profesores(codigo, nombre)
values(65, 'María Glosario');
insert into profesores(codigo, nombre)
values(66, 'Alexander');
insert into profesores(codigo, nombre)
values(67, 'Silvana');


--pruebas
select * from estudiantes
select * from profesores

--REGISTROS_ENTRADA
--primero altero y agrego columna
delete from registros_entrada
alter table registros_entrada
add column codigo_empleado int not null

--creo la tabla que se relaciona
create table empleado(
    codigo_empleado int not null,
    nombre varchar(25) not null,
    fecha date not null,
    hora time not null,
    constraint emplado_pk primary key(codigo_empleado)
)
--doy foreign key
alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado) 
references empleado(codigo_empleado) 

--inserto en la nueva tabla para que tenga datos
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1,'Ana Lopez','2023/08/01','08:00:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2,'Carlos Maita','2023/08/02','09:15:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(3,'Sofia Rivas','2023/08/03','14:30:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(4,'Pedro Guerra','2023/08/04','10:00:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(5,'Elena Torres','2023/08/05','16:45:00');
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'Roberto Vásquez','2023/08/05','16:45:00');

--pruebas
select * from estudiantes
select * from profesores

--PERSONA
create table persona(
	cedula char(10) not null,
	nombre varchar(50) not null,
	apellido varchar(50) not null,
	estatura decimal(10,2),
	fecha_nacimiento date not null,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint persona_apk primary key(cedula)
)

create table prestamo(
    cedula char(10) not null,
    monto varchar(25),
    fecha_prestamo date,
    hora_prestamo time,
    garante varchar(40)
    constraint prestamo_pk primary key(cedula)
)
--doy foreign key
alter table prestamo
add constraint persona_prestamo_fk
foreign key (cedula) 
references persona(cedula) 

--inserto en la nueva tabla para que tenga datos
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0101010101','Sean','Connery',1.89,'1930/08/25','08:00:00',15000.50,2);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0202020202','Elias','Gomez',1.75,'1990/03/10','12:30:00',500.00,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0303030303','Maria','Perez',1.65,'1985/07/15','09:15:00',2500.75,3);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0404040404','Luis','Ramos',1.80,'2001/11/20','18:45:00',1000.00,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0505050505','Andrea','Vega',1.70,'1978/01/01','07:07:07',50000.99,1);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0606060606','Ricardo','Soto',1.78,'1995/05/20','15:30:00',7500.20,1);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0707070707','Silvia','Cano',1.60,'2003/02/05','06:00:00',1200.00,0);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0808080808','Javier','Mora',1.85,'1970/12/12','21:40:00',90000.00,4);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('0909090909','Carla','Leal',1.72,'1988/09/01','10:05:00',320.50,2);
insert into persona(cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos)
values('1010101010','Omar','Cruz',1.91,'1965/06/30','05:55:55',100000.90,3);


--TRANSACCIONES

delete from transacciones

--creo la tabla que se relaciona
create table banco(
    codigo_banco int,
    codigo_transaccion int,
    detalle varchar(100),
    constraint banco_pk primary key(codigo_banco)
)
--doy foreign key
alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion) 
references transacciones(codigo) 

insert into banco(codigo_banco,codigo_transaccion,detalle)
values(100,1,'Transferencia recibida de cuenta 22002');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(101,2,'Pago de servicio a cuenta 22004');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(102,3,'Depósito efectivo de cuenta 22001');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(103,4,'Retiro en cajero automático');
insert into banco(codigo_banco,codigo_transaccion,detalle)
values(104,5,'Compra en línea de software');
