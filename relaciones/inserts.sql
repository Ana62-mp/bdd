--CUENTAS
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00001','17548','25/12/2022',150);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00002','17548','16/05/2023',999);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00003','17549','27/10/2022',785);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00004','17549','28/08/2023',315);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00005','17550','30/08/2023',548);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00006','17550','15/11/2022',800);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00007','17551','19/12/2022',490);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00008','17551','21/09/2023',350);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00009','17552','21/11/2022',980);
insert into cuentas(numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('00010','17552','21/08/2022',1000);

--CLIENTES
insert into compras(id_compra,cedula,fecha_compra,monto)
values(1,'1722234554','25/12/2022',150.63);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(2,'1722234554','15/04/2022',10.60);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(3,'9222202465','2023/11/05',55.00);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(4,'9222202465','2023/11/06',12.50);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(5,'1722200234','2024/01/10',123.45);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(6,'1722200234','2024/01/15',34.10);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(7,'9522200023','2024/02/20',8.99);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(8,'9522200023','2024/02/21',220.00);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(9,'1722200001','2024/03/01',75.20);
insert into compras(id_compra,cedula,fecha_compra,monto)
values(10,'1722200001','2024/03/05',15.50);

--PRODUCTOS
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(1,'1','2024/10/01',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(2,'1','2024/10/05',2);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(3,'2','2024/10/10',10);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(4,'2','2024/10/11',5);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(5,'3','2024/10/15',15);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(6,'3','2024/10/16',8);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(7,'4','2024/10/20',20);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(8,'4','2024/10/22',3);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(9,'5','2024/10/25',12);
insert into ventas(id_venta,codigo_producto,fecha_venta,cantidad)
values(10,'5','2024/10/26',6);

--VIDEOJUEGOS
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(1,'PC','07563');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(2,'PlayStation 5','07563');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(3,'PlayStation 4','85421');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(4,'PlayStation 5','85421');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(5,'PC','93475');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(6,'Xbox Series X','93475');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(7,'Nintendo Switch','15983');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(8,'Móvil (iOS/Android)','15983');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(9,'PC','35784');
insert into plataformas(id_plataforma,nombre_plataforma,codigo_videojuego)
values(10,'Nintendo Switch','35784');

--ESTUDIANTES
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476801,'Raul','Martínez','raumart01@gmail.com','04/02/2003',63);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476802,'Mario','Guaman','MarioG25@gmail.com', '08/12/2000',63);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476803,'Roberto','Quishpe','RobQuishpe64@gmail.com','29/06/2005',64);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476804,'Paul','Noguera','PaulNog55@gmail.com','22/07/2002',64);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476805,'Marcelo','Ramos','MarceloR72@gmail.com','15/08/2008',65);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476806,'Anthony','Agual','KAgual22@gmail.com','25/03/2002',65);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476807,'Paula','Celi','PauCeli31@gmail.com','30/09/2010',66 );
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476808,'Mónica','Martínez','MoniMar15@gmail.com','22/01/2001',66);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1235476809,'Anabel','Perlaza','WPerlaza18@gmail.com','12/04/2000',67);
insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento, codigo_profesor)
values (1735476810,'Sofía','Jimenez','SofiJz22@gmail.com','22/01/2001',67);

--REGISTROS_ENTRADA
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12345, '1754416489', '18/08/2023', '08:00',1);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12346, '1754416489', '19/08/2023', '09:00'1);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12347, '1754416487', '19/08/2023', '10:00',2);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12348, '1754416487', '19/08/2023', '11:00',2);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12349, '1754416485', '19/08/2023', '09:00' ,3);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12340, '1754416485', '19/08/2023', '09:00',3);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12350, '1754416483', '19/08/2023', '09:00',4);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12351, '1754416483', '19/08/2023', '08:00',4);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12352, '1754416481', '19/08/2023', '10:00',5);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12353, '1754416481', '19/08/2023', '09:00',5);
insert into registros_entrada(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
values(12354, '1754416482', '19/09/2023', '09:00',2201);

--PERSONA
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0101010101','500.00','2024/01/10','11:00:00','Banco A');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0202020202','120.00','2024/03/01','09:00:00','Amigo C');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0303030303','800.00','2024/04/05','10:15:00','Banco A');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0404040404','999.99','2024/05/10','15:00:00','Familiar F');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0505050505','100.00','2024/06/15','11:45:00','Garante H');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0606060606','750.50','2024/07/20','14:00:00','Empresa X');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0707070707','250.00','2024/08/01','16:30:00','Garante Y');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0808080808','640.25','2024/09/10','08:45:00','Banco B');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('0909090909','1000.00','2024/10/05','12:00:00','Familiar Z');
insert into prestamo(cedula,monto,fecha_prestamo,hora_prestamo,garante)
values('1010101010','325.99','2024/11/15','17:15:00','Amigo W');


--TRANSACCIONES

insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(1,'22002',150.00,'C','2024/11/01','09:00:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(2,'22004',50.00,'C','2024/11/01','11:30:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(3,'22001',300.75,'C','2024/11/02','14:00:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(4,'10001',12.50,'D','2024/11/02','16:45:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(5,'30005',25.00,'C','2024/11/03','08:15:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(6,'10002',80.00,'D','2024/11/03','10:30:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(7,'22003',10.00,'C','2024/11/04','13:20:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(8,'40001',250.00,'D','2024/11/04','15:50:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(9,'50001',99.99,'C','2024/11/05','09:00:00');
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(10,'60001',5.00,'D','2024/11/05','18:30:00');
