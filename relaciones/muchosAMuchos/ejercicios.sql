--USUARIOS Y GRUPO
create table usuarios(
	id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key(id)
)

create table grupo(
	id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key(id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key(us_id) references usuarios(id),
	constraint grupo_fk foreign key(gr_id) references grupo(id),
	constraint usuario_grupo_pk primary key(us_id,gr_id)
)



-- HABITACIONES Y HUÉSPEDES

create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal(10,2) not null,
	piso int not null,
	max_personas int,
	constraint habitaciones_pk primary key(habitacion_numero)
)

create table huespedes(
	id int not null,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	ciudad varchar(45),
	pais varchar(45),
	constraint huespedes_pk primary key(id)
)

create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key(habitacion) references habitaciones(habitacion_numero),
	constraint huesped_id_fk foreign key(huesped_id) references huespedes(id),
	constraint reservas_pk primary key(habitacion,huesped_id)
)



--MUNICIPIO Y PROYECTO

create table ciudad(
	id int not null,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key(id)
)

create table municipio(
	id int not null,
	nombre varchar(45) not null,
	ciudad_id int not null,
	constraint ciudad_id_fk foreign key(ciudad_id) references ciudad(id),
	constraint municipio_pk primary key(id)
)

create table proyecto(
	id int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key(id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,
	constraint municipio_id_fk foreign key(municipio_id) references municipio(id),
	constraint proyecto_id_fk foreign key(proyecto_id) references proyecto(id),
	constraint proyecto_municipio_pk primary key(municipio_id,proyecto_id)

)


----------CONSULTAS----

--USUARIOS Y GRUPO

select us.nombre, gr.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id and ug.gr_id = gr.id

select us.nombre from usuarios us, usuario_grupo ug
where ug.us_id = us.id
and ug.gr_id in (select id from grupo gr where id=1)

select us.nombre from usuarios us
where us.id in (select us_id from usuario_grupo where gr_id=1)


select gr.nombre, count(ug.us_id) from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id
group by gr.nombre


select us.nombre, gr.nombre from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id and ug.gr_id = gr.id
and lower(gr.nombre) like '%intensivo%'

select us.nombre from usuarios us
where us.id in (select us_id from usuario_grupo where gr_id=2)

select gr.nombre, max(ug.us_id) from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id
group by gr.nombre

select gr.nombre, min(ug.us_id) from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id
group by gr.nombre

select us.nombre, gr.fecha_creacion from usuarios us, grupo gr, usuario_grupo ug
where ug.us_id = us.id and ug.gr_id = gr.id
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'

select us.nombre from usuarios us
where us.id in (select us_id from usuario_grupo where gr_id=3)

select gr.descripcion, count(ug.us_id) from grupo gr, usuario_grupo ug
where ug.gr_id = gr.id
and lower(gr.descripcion) like '%matutino%'
group by gr.descripcion


-- HABITACIONES Y HUÉSPEDES

select * from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero and re.huesped_id = hu.id

select ha.habitacion_numero, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero and re.huesped_id = hu.id

select hu.nombres, hu.apellidos from huespedes hu
where hu.id in (select huesped_id from reservas where habitacion = 2)

select ha.habitacion_numero, count(re.huesped_id) from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero 
group by ha.habitacion_numero

select ha.habitacion_numero, ha.piso, hu.nombres, hu.apellidos from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero and re.huesped_id = hu.id
and ha.piso = 4

select hu.nombres, hu.apellidos from huespedes hu
where hu.id in (select huesped_id from reservas where habitacion = 3)

select ha.habitacion_numero, round((avg(re.huesped_id)),0) from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero 
group by ha.habitacion_numero

select * from habitaciones ha, huespedes hu, reservas re
where re.habitacion = ha.habitacion_numero and re.huesped_id = hu.id

select hu.nombres, hu.apellidos from huespedes hu
where hu.id in (select huesped_id from reservas where habitacion = 4)

select ha.habitacion_numero, SUM(ha.precio_por_noche) from habitaciones ha, reservas re
where re.habitacion = ha.habitacion_numero 
group by ha.habitacion_numero


--MUNICIPIO Y PROYECTO

select * from municipio mu, proyecto pr, proyecto_municipio pm
where pm.municipio_id = mu.id and pm.proyecto_id = pr.id

select mu.nombre, pr.proyecto from municipio mu, proyecto pr, proyecto_municipio pm
where pm.municipio_id = mu.id and pm.proyecto_id = pr.id

select pr.proyecto from proyecto pr
where id in (select proyecto_id from proyecto_municipio where municipio_id = 1)

select mu.nombre, count(pm.proyecto_id) from municipio mu, proyecto_municipio pm
where pm.municipio_id = mu.id
group by mu.nombre

select mu.nombre, pr.proyecto from municipio mu, proyecto pr, proyecto_municipio pm
where pm.municipio_id = mu.id and pm.proyecto_id = pr.id
and mu.nombre like '%GAD%'

select mu.nombre, min(pm.proyecto_id) from municipio mu, proyecto_municipio pm
where pm.municipio_id = mu.id
group by mu.nombre

select mu.nombre, ci.nombre from municipio mu, ciudad ci
where mu.ciudad_id = ci.id 

select pr.proyecto from proyecto pr
where id in (select proyecto_id from proyecto_municipio where municipio_id = 3)

select mu.nombre, max(pm.proyecto_id) from municipio mu, proyecto_municipio pm
where pm.municipio_id = mu.id
group by mu.nombre
