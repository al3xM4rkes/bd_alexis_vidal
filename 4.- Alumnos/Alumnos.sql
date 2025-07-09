CREATE TABLE Alumnos(
id_alumno integer,
Nombre varchar2(40),
Promedio float
);

Select * from Alumnos;

insert into Alumnos(id_alumno, Nombre, Promedio)
values(1, 'Alberto', 8);

insert into Alumnos(id_alumno, Nombre, Promedio)
values(2, 'Oliver', 7.3);

insert into Alumnos(id_alumno, Nombre, Promedio)
values(3, 'Carolina', 9.2);

insert into Alumnos(id_alumno, Nombre, Promedio)
values(4, 'Mauricio', 4.2);

insert into Alumnos(id_alumno, Nombre, Promedio)
values(5, 'Tania', 7.1);

SELECT * from Alumnos where Promedio between 6 and 8; --Consulta todos los registros con promedio entre 6-8
Update Alumnos set promedio=0 where promedio<5; --Actualiza alumnos con promedio menor a "5" a 0
Delete from Alumnos where nombre like '%O%'; --Elimina los alumnos cuyo nombre tenga la letra "0"

ALTER TABLE Alumnos add (Apellido_Paterno varchar2(40));
ALTER TABLE Alumnos add (Apellido_Materno varchar2(40));
ALTER TABLE Alumnos add (Semestre number);

insert into Alumnos(id_alumno, Nombre, Promedio, Apellido_Paterno, Apellido_Materno, Semestre)
values(5, 1, 'Alberto', 8, '', '');

Update Alumnos set Apellido_Paterno='Lopez' where id_alumno=1;
Update Alumnos set Apellido_Materno='Torres' where id_alumno=1;
Update Alumnos set Semestre=2 where id_alumno=1;

Update Alumnos set Apellido_Paterno='Martinez' where id_alumno=2;
Update Alumnos set Apellido_Materno='Lozada' where id_alumno=2;
Update Alumnos set Semestre=4 where id_alumno=2;

Update Alumnos set Apellido_Paterno='Marin' where id_alumno=3;
Update Alumnos set Apellido_Materno='Garcia' where id_alumno=3;
Update Alumnos set Semestre=1 where id_alumno=3;

Update Alumnos set Apellido_Paterno='Perez' where id_alumno=4;
Update Alumnos set Apellido_Materno='Toledo' where id_alumno=4;
Update Alumnos set Semestre=4 where id_alumno=4;

Update Alumnos set Apellido_Paterno='Hernandez' where id_alumno=5;
Update Alumnos set Apellido_Materno='Gonzalez' where id_alumno=5;
Update Alumnos set Semestre=3 where id_alumno=5;

delete from Alumnos where Promedio<8;--Borrar todos los registros donde el promedio sea menor a 8 
SELECT * from Alumnos where Semestre=4;--Semestres igual a 4



