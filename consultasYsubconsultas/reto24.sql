--Usuario y cuentas
select * from
personas pe, estado_civil ec
where pe.estado_civil_codigo = ec.codigo

select cu.numero_cuenta, us.nombre from
usuario us, cuentas cu
where cu.cedula_propietario = us.cedula
and cu.saldo between money(100) and money(1000)

--Clientes y compras

select nombre,apellido from clientes
where cedula like '%7%'


select * from clientes
where cedula = (select cedula
    from clientes
    where nombre = 'Monica')

--Estudiantes y profesores

select pr.codigo, es.nombre,es.apellido from 
estudiantes es, profesores pr
where pr.codigo=es.codigo_profesor
and lower(es.apellido) like '%n%'

select es.* from
estudiantes es
where es.codigo_profesor = (select codigo from profesores
							where nombre = 'Francisco')

--Persona y préstamo
select pe.cantidad_ahorrada, pr.monto,pr.garante from
persona pe,prestamo pr
where pe.cedula = pr.cedula
and pr.monto between '100' and '1000'

select pe.*,pr.* from persona pe, prestamo pr
where pe.cedula = pr.cedula and
pe.cedula = (select cedula from persona where nombre = 'Sean')

--Productos y ventas
select pr.nombre, pr.stock, ve.cantidad from
productos pr, ventas ve
where pr.codigo = ve.codigo_producto
and lower(pr.nombre) like '%n%' or pr.descripcion is null

select nombre, stock from productos
where codigo = (select codigo_producto from ventas where cantidad = 5)

--Transacciones y banco

select tr.*,ba.* from
transacciones tr, banco ba
where tr.codigo = ba.codigo_transaccion
and (tr.tipo = 'C' and tr.numero_cuenta between '22001' and '22004')

select * from transacciones
where codigo = (select codigo_transaccion from banco where codigo_banco = 1)

--Videojuegos y plataformas

select vi.nombre, vi.descripcion, vi.valoracion, pl.* from
videojuegos vi, plataformas pl
where vi.codigo = pl.codigo_videojuego
and (lower(vi.descripcion) like '%guerra%' and vi.valoracion > 7)
or (lower(vi.nombre) like 'c%' and vi.valoracion > 8 ) 
or (lower(vi.nombre) like 'd%' )

select * from plataformas 
where codigo_videojuego = (select codigo from videojuegos 
							where lower(nombre) = 'god of war')

--Registros de entrada y empleo

select ra.cedula_empleado, ra.fecha, em.nombre from
empleado em, registros_entrada ra
where ra.codigo_empleado = em.codigo_empleado
and ((ra.fecha between '01/08/2023' and '31/08/2023')
or (ra.cedula_empleado like '17%' and ra.hora between '08:00' and '12:00')
or (ra.fecha between '06/10/2023' and '20/10/2023' 
and ra.cedula_empleado like '08%' and ra.hora between '09:00' and '13:00'))


select em.*,ra.* from
empleado em, registros_entrada ra
where ra.codigo_empleado = em.codigo_empleado
and ra.codigo_empleado = 2201
