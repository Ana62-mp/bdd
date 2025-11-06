--PRODUCTOS
select * from productos
where stock = 10 and precio < money(10)

select nombre,stock from productos
where (lower(nombre) like '%m%')
or (descripcion like '% %')

select nombre from productos
where descripcion is null 
or stock = 0

--CUENTAS
select numero_cuenta,saldo from cuentas
where saldo > money(100) and saldo < money(1000)

select * from cuentas
where fecha_creacion between '05/11/2024' and '05/11/2025'

select * from cuentas
where saldo = money(0) or cedula_propietario like '%2'

--ESTUDIANTES
select nombre,apellido from estudiantes
where lower(nombre) like 'm%' or lower(apellido) like '%z'

select nombre,apellido from estudiantes
where cedula like '%06' or cedula like '17%'
--REGISTROS ENTRADA
select * from registros_entrada
where to_char(fecha,'MM')= '09'
or cedula_empleado like '17%'

select * from registros_entrada
where to_char(fecha,'MM')= '08'
and cedula_empleado like '17%'
and hora between '08:00' and '12:00'

select * from registros_entrada
where (to_char(fecha,'MM')= '08'
and cedula_empleado like '17%'
and hora between '08:00' and '12:00')
or (to_char(fecha,'MM')= '09'
and cedula_empleado like '08%'
and hora between '09:00' and '13:00')

--VIDEOJUEGOS
select * from videojuegos
where lower(nombre) like '%c%'
or valoracion = 7

select * from videojuegos
where codigo between 3 and 7
or valoracion = 7

select * from videojuegos
where (valoracion >7
and nombre like 'C%')
or (valoracion > 8
and nombre like 'D%')

--TRANSACCIONES
select * from transacciones
where tipo = 'C'
and numero_cuenta between '22001' and '22004'

select * from transacciones
where tipo = 'D'
and to_char(fecha,'DD-MM') = '25-05'
and numero_cuenta between '22007' and '22010'

select * from transacciones
where codigo between 1 and 5
and numero_cuenta between '22002' and '22004'
and (to_char(fecha,'DD-MM') = '26-05' or to_char(fecha,'DD-MM') = '29-05')

