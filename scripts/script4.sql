create table registros_entrada(
    codigo_registro int not null,
    cedula_empleado char(10) not null,
    fecha date not null,
    hora time not null,
    constraint registros_entrada_pk primary key(codigo_registro)
)

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(1,'1748547985','12/10/2024','08:00')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2,'1784596875','12/10/2024','08:30')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(3,'1785425869','12/10/2024','08:45')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(4,'1748527458','12/10/2024','08:56')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(5,'1744789652','12/10/2024','09:20')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(6,'0147859638','14/10/2024','14:50')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(7,'1744772258','15/10/2024','08:48')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(8,'1742258964','15/10/2024','10:54')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(9,'1745237747','15/10/2024','07:05')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(10,'1748569874','20/10/2024','09:10')

insert into registros_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(11,'1748547982','12/08/2024','08:00')

select * from registros_entrada