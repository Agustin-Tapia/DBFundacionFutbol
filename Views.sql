/*CREACION DE VISTAS*/

create view show_students as 
select IdDatosObligatorios as Estudiantes, nombres from datos_obligatorios su
inner join estudiantes st on st.IdEstudiante = su.IdDatosObligatorios
where su.nombres > 0 or st.IdEstudiante <= 5;

select * from show_students;

/*-------*/

create view show_teachers as 
select IdDatosObligatorios as Profesores, nombres from datos_obligatorios su
inner join profesor pr on pr.IdProfesor = su.IdDatosObligatorios
where su.nombres > 5 or pr.IdProfesor <= 9;

select * from show_teachers;

/*-------*/

create view show_tutors as 
select IdDatosObligatorios as Responsables, nombres from datos_obligatorios su
inner join responsables rp on rp.IdResponsable = su.IdDatosObligatorios
where su.nombres > 9 or rp.IdResponsable <= 13;

select * from show_tutors;

/*-------*/

create view show_students_date as 
select IdDatosObligatorios as Estudiantes, fecha_de_nacimiento from datos_obligatorios su
inner join estudiantes st on st.IdEstudiante = su.IdDatosObligatorios;

select * from show_students_date;

/*-------*/

create view show_class as 
select * from curso;

select * from show_class;

/*-------*/

create view show_students_pay as 
select IdPago as Estudiantes_pagos, vencimiento from pago pg
inner join estudiantes st on st.IdEstudiante = pg.IdPago;

select* from show_students_pay;

/*-------*/

create view show_students_and_tutors as 
select estudiante_id, responsables_id from curso;

select * from show_students_and_tutors;

