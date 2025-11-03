select * from personas where fecha_nacimiento between '10/06/1995' and '22/02/2022'
select * from personas where hora_nacimiento >= '10:05:10'

insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('0147895642','Jefferson','Farfan','10/06/1995')

insert into personas(cedula,nombre,apellido,fecha_nacimiento)
values('0147895643','Jefferson','Farfan','11/06/1995')

insert into personas(cedula,nombre,apellido,hora_nacimiento)
values('0157895643','Jefferson','Romero','22:54:10')

insert into personas(cedula,nombre,apellido,hora_nacimiento)
values('0137895643','Martina','Romero','10:05:10')