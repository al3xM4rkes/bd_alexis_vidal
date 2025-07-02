CREATE TABLE PRODUCTO(
pk_producto integer primary key,
nombre_producto varchar2(30) not null,
categoria varchar2(30) not null,
precio_unitario number(8,2) not null,
existencia number(30) not null, 
caducidad DATE
);

DROP TABLE PRODUCTO;

CREATE TABLE PRODUCTO(
pk_producto integer primary key,
nombre_producto varchar2(30) not null,
categoria varchar2(30) not null,
precio_unitario number(10,2) not null,
existencia number(30) not null, 
caducidad DATE
);

SELECT marca, stock_minimo from PRODUCTO;
SELECT precio_unitario, nombre_producto, (5) from PRODUCTO;
SELECT * from PRODUCTO where precio_unitario=60.40;
SELECT * from PRODUCTO where precio_unitario<>30;
SELECT * from PRODUCTO where precio_unitario!=30;
SELECT * from PRODUCTO where precio_unitario<80;
SELECT * from PRODUCTO where precio_unitario>70;
SELECT * from PRODUCTO where precio_unitario>=40;
SELECT * from PRODUCTO where precio_unitario<=60;
SELECT * from PRODUCTO where precio_unitario between 40 and 80;
SELECT * from PRODUCTO where nombre_producto like 's%';
SELECT * from PRODUCTO where nombre_producto like '%e';
SELECT * from PRODUCTO where nombre_producto like '%Ace%';
SELECT * from PRODUCTO where precio_unitario in (30,40,60);
SELECT * from PRODUCTO where precio_unitario not in (45.50, 10, 50);
SELECT * from PRODUCTO where marca is null;
SELECT * from PRODUCTO where marca is not null;
SELECT * from PRODUCTO;


insert into PRODUCTO(pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad)
VALUES(1, 'Cafe', 'Bebida caliente', 45.50, 120, TO_DATE('28-03-2027', 'DD-MM-YYYY'));

insert into PRODUCTO(pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad)
VALUES(2, 'Ace', 'Detergente', 119.20, 200, TO_DATE('7-09-2026', 'DD-MM-YYYY'));

insert into PRODUCTO(pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad)
VALUES(3, 'Horchata', 'Bebida fria', 30.00, 70, TO_DATE('19-02-2026', 'DD-MM-YYYY'));

insert into PRODUCTO(pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad)
VALUES(4, 'Speed Stick', 'Higiene', 60.40, 100, TO_DATE('7-09-2027', 'DD-MM-YYYY'));

insert into PRODUCTO(pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad)
VALUES(5, 'Chips jalapeño', 'Frituras', 58.50, 60, TO_DATE('27-03-2028', 'DD-MM-YYYY'));


ALTER TABLE PRODUCTO add (marca varchar2(100) default 'S/N');

ALTER TABLE PRODUCTO add (stock_minimo number(30) default 0);

INSERT INTO PRODUCTO (pk_producto, nombre_producto, categoria, precio_unitario, existencia, caducidad, marca, stock_minimo)
VALUES ( 6, 'Jugo de naranja', 'Bebida natural', 32.50, 60, TO_DATE('15-09-2026', 'DD-MM-YYYY'), '', 25);

commit;