/*Creacion de Funciones*/

/*Estudiantes con nombre y apellido*/

DELIMITER $$

CREATE FUNCTION estudiantes_nombre_completo (id INT)
RETURNS VARCHAR(50) 
READS SQL DATA
BEGIN
	
    return (select concat(nombres,',', apellidos) from datos_obligatorios where IdDatosObligatorios=id);
    
END $$

select estudiantes_nombre_completo(datos_obligatorios_id) as 'Estudiantes en total' from estudiantes;

select estudiantes_nombre_completo(4);


/*Condicionando si hay estudiantes PAGOS o BECADOS*/

delimiter %
create function becados_y_pagos(id int) 
returns varchar(50)
deterministic
begin
	if exists(select 1 from becados where estudiante_id=id) then 
		return 'Estudiante becado';
	end if;
	if exists(select 1 from pago where estudiante_id=id) then 
		return 'Estudiante pago';
	end if;
	return 'estudiante no encontrado';
end%

select becados_y_pagos(8);


