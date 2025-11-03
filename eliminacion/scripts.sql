-- PRODUCTOS
delete from productos
where descripcion is null

select * from productos

-- CUENTAS
delete from cuentas
where cedula_propietario like '10%'

-- ESTUDIANTES
delete from estudiantes
where cedula like '%05'

-- REGISTROS ENTRADAS
delete from registros_entrada
where to_char(fecha,'MM') like '06'

-- VIDEOJUEGOS
delete from videojuegos
where valoracion < 7

-- TRANSACCIONES
delete from transacciones
where hora between '14:00' and '18:00'
and to_char(fecha,'MM-YYYY')='08-2025'
