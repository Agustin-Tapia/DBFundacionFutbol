/*Creacion de Stored Procedures*/

/*Filtramos por el nombre y apellido de los estudiantes, ordenando*/

DELIMITER $$
create procedure buscar_estudiante(
in name varchar(50), 
in lname varchar(50))
begin
	declare filtro varchar(200);
	if name <>'' then
		set filtro = concat('nombres=''',fname,'''');
    end if;
	if lname<>'' then
		set filtro = concat('apellidos=''',lname,'''');
    end if;
	
    SET @clausula = concat('SELECT * FROM datos_obligatorios where ', filtro, 'order by IdDatosObligatorios');
	PREPARE runSQL FROM @clausula;
	EXECUTE runSQL;
	DEALLOCATE PREPARE runSQL;

end$$

call buscar_estudiante('','Fernandez');

/*La primera consigna del trabajo, donde mediante 2 parametros, con 1 damos el campo de la tabla y con otros el orden*/

delimiter %
create procedure sp_orden_datos (in campo varchar(30), orden varchar(5))
begin
	set @consulta = concat('select * from datos_obligatorios order by ', campo, '', orden);

	prepare runSQL from @consulta;

	execute runSQL;

	deallocate prepare runSQL;
end%

call sp_orden_datos ('IdDatosObligatorios ', 'desc')


/*2da consigna. Insertando nuevos estudiantes y mostrando de manera DESC*/
delimiter //
create procedure sp_nuevo_estudiante( 
in nombres_est char(50), 
in apellidos_est char(50), 
in direccion_est char(255), 
in fecha_de_est date,
in edad_est int,
in telefono_est int
)
begin
	if nombres_est='' then
		select 'ERROR: no se puede crear el estudiante';
	ELSE
		insert datos_obligatorios (nombres, apellidos, direccion, fecha_de_nacimiento, edad, telefono) 
        values (nombres_est, apellidos_est, direccion_est, fecha_de_est, edad_est, telefono_est);
        select * from datos_obligatorios order by IdDatosObligatorios desc;
	END IF;
end//

call sp_nuevo_estudiante('Hernan', 'Benito Rey', 'Remedios San martin 255','20120313', 11, 1130323645);
select * from datos_obligatorios;


























