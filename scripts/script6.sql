create table transacciones(
    codigo int not null,
    numero_cuenta char(5) not null,
    monto money not null,
    tipo char(1) not null,
    fecha date not null,
    hora time not null,
    constraint transacciones_pk primary key(codigo)
)

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17541,'10021','20136','C','12/05/2023','12:24')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17542,'10021','5000','D','12/05/2023','13:01')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17543,'10055','125075','C','13/05/2023','09:45')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17544,'10021','3590','D','13/05/2023','15:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17545,'10080','45000','C','14/05/2023','10:10')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17546,'10055','1520','D','14/05/2023','18:05')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17547,'10080','10000','D','15/05/2023','11:55')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17548,'10021','8740','C','15/05/2023','20:00')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17549,'10055','30000','C','16/05/2023','08:30')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17550,'10080','2565','D','16/05/2023','14:12')

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(17551,'10081','250','D','16/09/2023','14:12')

select * from transacciones
