update transacciones set tipo='T'
where monto > money(100)
and monto < money(500)
and extract(month from fecha) = 9
and extract(hour from hora) >=14
and extract(hour from hora) <=20

select * from transacciones