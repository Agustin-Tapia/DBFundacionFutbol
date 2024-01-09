/*Sentencias del sublenguaje TCL*/

/*Primera Tabla*/
select * from datos_obligatorios; /*Usando esta tabla*/

/*Primera tabla, eliminando registros, iniciando previamente una transaccion*/
start transaction;
delete from datos_obligatorios where IdDatosObligatorios=18;
rollback; /*Usando rollback para revertir los cambios*/
commit; /*Para confirmar los cambios modificados*/

/*Para insertar de nuevo los datos, dejo mi sintaxis debajo de esta linea*/
insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (18, 48444563, 2325545232, 'Lucas Nahuel', 'Rodriguez', 'Lomas 745', '2012-11-12', 11, 1512311912);

/*Segunda Tabla*/
select * from seguridad_escuela; /*Usando esta tabla*/

start transaction; /*insertando 8 nuevos registros*/
insert seguridad_escuela(IdSecurity, DNI, nombres, apellidos, direccion, telefono)

values (1,30124698, 'Pedro Sanchez', 'Lopez', 'Talla 1479', 154565281),

    (2,30453677, 'Ramos Tosti', 'Rass', 'Washington 954', 151264733),

    (3,31475568, 'Agustin Merto', 'Ezequiel', 'Bermudez 657', 151455456),

	  (4,32654999, 'Lucho Real', 'Maria', 'Paredez 845', 154585161);
savepoint grupo1;

insert seguridad_escuela(IdSecurity, DNI, nombres, apellidos, direccion, telefono)

values (5,33115677, 'Raul Enes', 'Flores', 'Ital 6599', 155462245),

    (6,30461684, 'Felipe Ruiz', 'Sosa', 'Once 4788', 154462289),

    (7,30435912, 'Ignacio Saavedra', 'Garcia', 'Castro 4562', 151526242),

    (8,30464549, 'Romero Ponce', 'Quiroga', 'Gurruchaga 1400', 152564843);
savepoint grupo2;

-- Para deshacer en ingreso de los ultimos 4 registros usamos la sentencia 
rollback to savepoint grupo1;

release savepoint grupo1; /*eliminacion del grupo 1, los 4 regitros insertados*/
rollback;
commit;

select * from seguridad_escuela; 







