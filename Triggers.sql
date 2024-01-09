/*Creacion de Triggers*/


/*En esta consigna, crearemos una tabla y un trigger donde se encarguen de registrar con fecha y hora 
			LUEGO de haber ingresado nuevos datos en la tabla datos_obligatorios*/
            
            
create table nuevos_datos_log(
IdLog int primary key auto_increment,
IdDatosObligatorios int,
DNI int,
CBU bigint,
nombres varchar(255),
apellidos varchar(255),
direccion varchar(255),
fecha_de_nacimiento date,
edad int,
telefono int,
desde datetime
);

create trigger NewDates
after insert on datos_obligatorios for each row
insert nuevos_datos_log (IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono, desde) 
values (new.IdDatosObligatorios,new.DNI, new.CBU, new.nombres,new.apellidos,new.direccion, new.fecha_de_nacimiento, new.edad, new.telefono, now());

insert datos_obligatorios(IdDatosObligatorios, DNI, CBU, nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono)
values (18, 48444563, 2325545232, 'Lucas Nahuel', 'Rodriguez', 'Lomas 745', '2012-11-12', 11, 1512311912);

select * from nuevos_datos_log; /*Aca se comprueba la funcion*/
select * from datos_obligatorios; 



/*En esta consigna, crearemos una tabla y un trigger donde se encarguen de registrar con fecha y hora 
ANTES de que sea actualizado un valor de la tabla profesor, en este caso, que se registre que tipo de deporte
enseñaba antes del cambio*/

create table deporte_nuevo_log(
IdLog int primary key auto_increment,
IdProfesor int,
tipo_de_deporte varchar(255),
registro_fecha_de_cambio datetime
);

delimiter //
create trigger New_Sports
before update on profesor for each row
begin

if old.tipo_de_deporte<>new.tipo_de_deporte then
insert deporte_nuevo_log (tipo_de_deporte, IdProfesor, registro_fecha_de_cambio) 
values (old.tipo_de_deporte,old.IdProfesor, now());
end if;

end//

## Sentencias aparte
update profesor set tipo_de_deporte='Futbol' where IdProfesor= 7;
select * from profesor;
select * from deporte_nuevo_log;









