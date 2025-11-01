create table estudiantes(
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) not null,
    fecha_nacimiento date not null,
    constraint estudiantes_pk primary key(cedula)
)

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1712774778','Alicia','Gómez','aliciagomex@gmail.com','21/12/1978')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1749756210','Ana','Plaza','ana.plaza@gmail.com','14/03/1980')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1725489637','Roberto','Suárez','roberto.suarez@gmail.com','20/05/1975')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('0194856481','Patricio','Camacho','pato.camacho@gmail.com','15/11/1978')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1785423549','Oscar','Martínez','oscar.marti@gmail.com','25/08/1975')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1485796582','Carolina','Alcazar','caro.alca@gmail.com','14/06/1978')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1748956425','Jeremy','Muñoz','jeremy12m@gmail.com','22/05/1980')

insert into estudiantes(cedula,nombre,apellido,email,fecha_nacimiento)
values('1748752214','Joel','Granizo','joejoeg@gmail.com','27/07/1975')

select * from estudiantes