/*
INSERCION DE DATOS
*/
use fundacion_futbol;
/*
Insertando los ID en tabla estudiantes
*/

select * from estudiantes;

delete from estudiantes;

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (1,1);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (2, 2);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (3, 3);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (4, 4);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (5, 5);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (6, 14);

insert estudiantes(IdEstudiante, datos_obligatorios_id)
values (7, 15);

/*
Insertando datos en tabla datos_obligatorios
*/
select * from datos_obligatorios;

delete from datos_obligatorios;

/*Estudiantes*/

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (1, 48587366, 2065545232, 'Pablo Aimar', 'Rodriguez', 'Munro 1886', '2011-05-25', 12, 1535841223);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (2, 50812336, 5454213214, 'Pepe Luis', 'Ramirez', 'Libertador 225', '2011-08-02', 12, 1513425503);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (3, 55462346, 6545132125, 'Lucas Peinado', 'Allende', 'Gurruchaga 125', '2012-05-21', 12, 1566643547);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (4, 56522831, 5453212545, 'Rodrigo Raul', 'Gonzales', 'Ortiz 1452', '2011-02-14', 12, 1567726593);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (5, 57994913, 1321212545, 'Adrian Javier', 'Fernandez', 'Rivadavia 451', '2011-06-26', 12, 1588721472);

/*Profesores*/

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (6, 302231215, 8149818915, 'Juan Ortiz', 'German', 'Monaco 779', '1989-02-22', 35, 1565777459);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (7, 305156156, 32123023212, 'Pedro Rama', 'Diaz', 'Urial 695', '1988-08-29', 36, 1548454220);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (8, 293032365, 9878848823, 'Gabriel Perez', 'Fernandez', 'Jujuy 332', '1980-02-17', 41, 1545324479);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (9, 283212123, 20293202022, 'Rodrigo Sosa', 'Acosta', 'Salvador 1477', '1987-06-30', 37, 1588473211);

/*Responsables*/

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (10, 295654532, 29321223032, 'Felipe Luis', 'Benitez', 'Scalabrini Ortiz 1125', '1997-11-20', 38, 1545234168);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (11, 293213455, 29020231553, 'Ezequiel Torres', 'Gomez', 'Santa Fe 1600', '1998-01-24', 38, 1511243584);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (12, 283456121, 28147213202, 'Luis Martinez', 'Ramirez', 'Colon 455', '1989-09-22', 38, 1574142315);

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (13, 273551522, 27388584183, 'Facundo Flores', 'Rojas', 'Remedios Escalada 559', '1990-03-28', 39, 1544283002);

/*
Insertando los ID en tabla profesor
*/

select * from profesor;

delete from profesor;

insert profesor(IdProfesor, datos_obligatorios_id)
values (6, 6);

insert profesor(IdProfesor, datos_obligatorios_id)
values (7, 7);

insert profesor(IdProfesor, datos_obligatorios_id)
values (8, 8);

insert profesor(IdProfesor, datos_obligatorios_id)
values (9, 9);

insert profesor(IdProfesor, datos_obligatorios_id)
values (11, 17);
/*
Insertando los ID en tabla responsables
*/

select * from responsables;

delete from responsables;

insert responsables(IdResponsable, datos_obligatorios_id)
values (10, 10);

insert responsables(IdResponsable, datos_obligatorios_id)
values (11, 11);

insert responsables(IdResponsable, datos_obligatorios_id)
values (12, 12);

insert responsables(IdResponsable, datos_obligatorios_id)
values (13, 13);

/*
Insertando los ID en tabla curso
*/
select * from curso;

delete from curso;

insert curso(IdIntermediaria, profesor_id, responsables_id, estudiante_id)
values (1,1,1,1);

insert curso(IdIntermediaria, profesor_id, responsables_id, estudiante_id)
values (2,2,2,2);

insert curso(IdIntermediaria, profesor_id, responsables_id, estudiante_id)
values (3,3,3,3);

insert curso(IdIntermediaria, profesor_id, responsables_id, estudiante_id)
values (4,4,4,4);

/*
Insertando los ID en tabla becados
*/

select * from becados;
delete from becados;

insert becados(IdBeca, estudiante_id, cantidad, vencimiento)
values (1, 1, 1, '2023-12-31');

insert becados(IdBeca, estudiante_id, cantidad, vencimiento)
values (2, 2, 1, '2023-12-31');

/*
Insertando los ID en tabla pago
*/

select * from pago;
delete from pago;

insert pago(IdPago, estudiante_id, cantidad, vencimiento)
values (3, 3, 3, '2023-12-31');

insert pago(IdPago, estudiante_id, cantidad, vencimiento)
values (4, 4, 3, '2023-12-31');

insert pago(IdPago, estudiante_id, cantidad, vencimiento)
values (5, 5, 3, '2023-12-31');







