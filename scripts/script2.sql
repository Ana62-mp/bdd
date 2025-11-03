create table cuentas(
    numero_cuenta char(5) not null,
    cedula_propietario char(5) not null,
    fecha_creacion date not null,
    saldo money not null,
    constraint cuentas_pk primary key(numero_cuenta)
)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00001','17100','21/10/2023',452.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00002','17101','25/12/2024',521.39)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00003','17102','01/02/2020',1054.26)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00004','17103','07/11/2023',845.31)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00005','17104','16/05/2022',968.45)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00006','17105','22/01/2019',2154.23)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00007','17106','19/02/2021',1897.54)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00008','17107','26/08/2024',758.69)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00009','17108','15/11/2020',4656.21)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00010','17109','11/10/2025',478.55)

insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12458','17171','15/10/2025',120.24)

select * from cuentas