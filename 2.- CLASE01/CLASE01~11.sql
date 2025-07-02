CREATE TABLE alumnos(
pk_alumno integer primary key,
nombre varchar2(30) not null,
apellido_paterno varchar2(30) not null,
apellido_materno varchar2(30),
fecha_nacimiento date,
curp char(18),
rfc char(13)
);

SELECT * FROM alumnos;
--crear
Insert into alumnos(pk_alumno, nombre, apellido_paterno, apellido_materno, fecha_nacimiento, curp, rfc)
values (1, 'ALEXIS', 'VIDAL', 'MARQUEZ', to_date('21_11_2005', 'DD/MM/YYYY'), 'VIMC051121HVZDRRA2', 'RFCO1234561AN');