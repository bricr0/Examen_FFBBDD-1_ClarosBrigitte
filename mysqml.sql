mysql> create table if not exists cliente ( 
     id_cliente int primary key, 
     nombre varchar(60),
     compras decimal); 
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists compras (
     id_comprado int primary key,
     fecha date,
     cantidad int,
     precio decimal, 
     id_cliente_fk int,
     foreign key (id_cliente_fk) references cliente(id_cliente));
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists ventas (
     id_vendido int primary key,
     fecha date, 
     cantidad int,
     precio decimal); 
Query OK, 0 rows affected (0,02 sec)

mysql> create table if not exists registrar (
     id_comprado_fk int,
     id_vendido_fk int,
     primary key (id_comprado_fk, id_vendido_fk),
     foreign key (id_comprado_fk) references compras(id_comprado),
     foreign key (id_vendido_fk) references ventas(id_vendido));
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists repuestos ( 
     id_repuestos int primary key, 
     cantidad int);
Query OK, 0 rows affected (0,02 sec)

mysql> create table if not exists proveedor (
     id_proveedor int primary key,
     suministros varchar(100),
     pedidos varchar(60));
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists inventario (
     id_inventario int primary key, 
     cantidad int);
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists revisa ( 
     id_repuestos_fk int, 
     id_inventario_fk int, 
     primary key (id_repuestos_fk, id_inventario_fk),
     foreign key (id_repuestos_fk) references repuestos(id_respuestos),
     foreign key (id_inventario_fk) references inventario(id_inventario));
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists necesita (
     id_cliente_fk int,
     id_repuestos_fk int, 
     primary key (id_cliente_fk, id_respuestos_fk), 
     foreign key (id_cliente_fk) references cliente(id_cliente),
     foreign key (id_repuestos_fk) references repuestos(id_repuestos));
Query OK, 0 rows affected (0,03 sec)

mysql> create table if not exists entrega (
     id_repuestos_fk int,
     id_proveedor_fk int,
     primary key (id_repuestos_fk, id_proveedor_fk),
     foreign key (id_repuestos_fk) references repuestos(id_repuestos),
     foreign key (id_proveedor_fk) references proveedor(id_proveedor));
Query OK, 0 rows affected (0,03 sec)
