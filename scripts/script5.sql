create table videojuegos(
    codigo int not null,
    nombre varchar(100) not null,
    descripcion varchar(300),
    valoracion int not null,
    constraint videojuegos_pk primary key(codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(10001,'Call Of Duty','Es un videojuego de disparos en primera persona',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(10002,'The Legend of Zelda: BOTW','Un juego de acción y aventura de mundo abierto con un gran énfasis en la exploración y la física.',5)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(10003,'Minecraft','Juego sandbox que permite a los jugadores construir con diversos bloques en un mundo 3D.',4)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(10004,'FIFA 25','Simulador de fútbol con licencias oficiales de equipos y jugadores.',3)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(10005,'Among Us','Juego multijugador de deducción social ambientado en el espacio.',4)

insert into videojuegos(codigo,nombre,valoracion)
values(10006,'Cyberpunk 2077',5);

insert into videojuegos(codigo,nombre,valoracion)
values(10007,'God of War',5);

insert into videojuegos(codigo,nombre,valoracion)
values(10008,'Stardew Valley',4);

select * from videojuegos