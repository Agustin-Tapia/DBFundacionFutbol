
/*
CREACIÓN DE TABLAS - FUNDACIÓN FÚTBOL
*/

/*
DATOS OBLIGATORIOS PERSONALES
*/

create table datos_obligatorios(
IdDatosObligatorios int primary key auto_increment,
DNI int, 
CBU bigint,
unique key(DNI, CBU),
nombres varchar(50) not null,
apellidos varchar(50) not null,
direccion varchar(50) not null,
fecha_de_nacimiento date not null,
edad int,
telefono int
);


/*
ESTUDIANTES
*/
create table estudiantes(
IdEstudiante int primary key auto_increment,
datos_obligatorios_id int not null,
foreign key(datos_obligatorios_id) references datos_obligatorios(IdDatosObligatorios)
);


/*
PROFESORES
*/

create table profesor(
IdProfesor int primary key auto_increment,
tipo_de_deporte varchar(50),
datos_obligatorios_id int not null,
foreign key(datos_obligatorios_id) references datos_obligatorios(IdDatosObligatorios)
);

/*
RESPONSABLES
*/

create table responsables(
IdResponsable int primary key auto_increment,
datos_obligatorios_id int not null,
foreign key(datos_obligatorios_id) references datos_obligatorios(IdDatosObligatorios)
);


/*
TABLA CURSO DE PROFESOR Y ESTUDIANTE
*/

create table curso(
IdIntermediaria int primary key auto_increment,
profesor_id int not null,
responsables_id int not null,
estudiante_id int not null,
foreign key(estudiante_id) references estudiantes(IdEstudiante),
foreign key(profesor_id) references profesor(IdProfesor),
foreign key(responsables_id) references responsables(IdResponsable)
);


/*
BECAS Y PAGO
*/

create table becados(
IdBeca int primary key auto_increment,
estudiante_id int not null,
foreign key(estudiante_id) references estudiantes(IdEstudiante),
cantidad int not null,
vencimiento date null
);

create table pago(
IdPago int primary key auto_increment,
estudiante_id int not null,
foreign key(estudiante_id) references estudiantes(IdEstudiante),
cantidad int not null,
vencimiento date not null
);

/*
Seguridad de la escuela, ultima tabla creada
*/

CREATE TABLE seguridad_escuela(
  IdSecurity int NOT NULL AUTO_INCREMENT,
  DNI int DEFAULT NULL,
  CBU bigint DEFAULT NULL,
  nombres varchar(255) DEFAULT NULL,
  apellidos varchar(255) DEFAULT NULL,
  direccion varchar(255) DEFAULT NULL,
  telefono int DEFAULT NULL);














