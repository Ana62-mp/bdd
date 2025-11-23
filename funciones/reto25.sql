--USUARIOS CUENTAS
select AVG(cast(saldo as numeric)) from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula
and us.cedula = '17549'

select tipo_cuenta, count(*) from cuentas cu, usuario us
where cu.cedula_propietario = us.cedula
group by tipo_cuenta


--CLIENTES COMPRAS

select cl.cedula, sum(co.monto) from clientes cl, compras co
where cl.cedula = co.cedula
group by cl.cedula

select compras.fecha_compra, count(compras) from compras
where compras.fecha_compra = '2022-12-25'
group by compras.fecha_compra

select *  from compras

--ESTUDIANTES PROFESORES

select es.codigo_profesor, count(es.*) from profesores pr, estudiantes es
where es.codigo_profesor = pr.codigo
group by es.codigo_profesor

select 
round(avg(extract(year from current_date)-(extract(year from fecha_nacimiento))))
from estudiantes

--PERSONA PRESTAMO
select pe.cedula, sum(cast(pr.monto as numeric)) from prestamo pr, persona pe
where pe.cedula = pr.cedula
group by pe.cedula

select count(*) as numero_personas_mas_hijos from personas
where personas.numero_hijos > 1


--PRODUCTOS VENTAS

select sum(ve.cantidad) as total_vendidos from productos pr, ventas ve
where pr.codigo = ve.codigo_producto

-- TRANSACCIONES BANCO

select count(*) as transaccion_tipoC from transacciones
where tipo = 'C'

select numero_cuenta, round((avg(cast(monto as decimal))),2) as monto_promedio
from transacciones
group by numero_cuenta

--VIDEOJUEGOS PLATAFORMAS
select vi.codigo, count(pl.*) as total_plataformas from videojuegos vi, plataformas pl
where vi.codigo = pl.codigo_videojuego
group by vi.codigo

select round((avg(valoracion)),2) as valoracion_promedio from videojuegos


--REGISTROS ENTRADA EMPLEADO

select ra.cedula_empleado, count(ra.*) as total_registros_entrada from registros_entrada ra
group by ra.cedula_empleado

select * from registros_entrada

select max(fecha) as fecha_max , min(fecha) as fecha_min from registros_entrada





