--Agregacion operaciones sobre un conjunto de resultados
--count  cuantos registro existen (puede tener condicional)
select *
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

select count(ec.codigo)
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

--AVG PROMEDIO daot numérico
select AVG(numero_hijos) from personas
select AVG(estatura) from personas
select AVG(cast(cantidad_ahorrada as numeric)) from persona
-- cast(cantidad_ahorrada as numeric) convierte a numero

select avg(cast(cantidad_ahorrada as numeric))
from personas per, estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

-MAX MIN SUM --solo VALORES NUMÉRICOS POR ESO CAST NUMERIC

select SUM(cast(cantidad_ahorrada as numeric)) from persona
select MAX(cast(cantidad_ahorrada as numeric)) from persona
select MIN(cast(cantidad_ahorrada as numeric)) from persona

--group by
select estado_civil_codigo, count(*) from personas
group by estado_civil_codigo

--agrupa a cada persona con un estado civil y le da la suma
--total de todo los hijos de las personas con ese ec
select estado_civil_codigo, sum(numero_hijos) from personas
group by estado_civil_codigo

