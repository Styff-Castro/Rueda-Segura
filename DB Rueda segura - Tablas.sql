-- drop database if exists Rueda_Segura; 
-- drop table if exists

-- Creacion de la base de dato
create database if not exists Rueda_Segura;
use Rueda_Segura;

-- 1 Tabla Seguro
create table Seguro (
seguro_id int primary key auto_increment not null, -- id
nombre varchar(25) not null, -- Nombre de la empresa
numero_de_poliza  int not null unique,  -- Número de póliza del seguro
tipo_seguro varchar(50) not null, -- Cobertura 
fecha_de_vencimiento date); -- fecha de vencimiento del seguro

-- 2 Tabla Tipo de Vehiculo
create table Tipo_Vehiculo (
tipo_vehiculo_id int primary key auto_increment not null, -- id
nombre_tipo varchar(20) not null); -- coche, furgoneta, camion

-- 3 Tabla Vehiculos
create table Vehiculos (
vehiculo_id int primary key auto_increment not null, -- id
matricula varchar(50) not null unique, -- matricula del vehiculo
marca varchar(50) not null, -- marca del vehiculo
modelo varchar(50) not null, -- modelo del vehiculo
seguro_id int not null, -- id
tipo_vehiculo_id int, -- id
fabricacion int not null, -- año de fabricacion
kilometraje_actual int not null, -- kilometraje actual del vehiculo
fecha_ultima_revision date not null, -- fecha de la ultima revision del vehiculo
historial_de_mantenimiento text not null, -- historial de mantenimiento del vehiculo
ITV date not null, -- fecha de la ultima IVT del vehiculo
foreign key (seguro_id) references Seguro (seguro_id),
foreign key (tipo_vehiculo_id) references Tipo_Vehiculo (tipo_vehiculo_id));

-- 4 Tabla Clientes
create table Clientes (
cliente_id int primary key auto_increment not null, -- id
nombre_razon_social varchar(100), -- nombre o razon social del cliente
direccion varchar(200) not null, -- direecion del cliente
telefono varchar(25) not null, -- telefono del cliente
email varchar(30) not null, -- email del cliente
persona_de_contacto varchar(40) not null, -- persona de contacto cliente
numero_de_vehiculos_flota int); -- # de vehiculo que tiene el cliente

-- 5 Tabla Tipo de Contrato
create table Tipo_de_Contrato (
tipo_de_contrato_id int primary key auto_increment not null, -- id
nombre varchar(30) not null); -- tipo d econtrato

-- 6 Tabla Contratos
CREATE TABLE Contratos (
  contratos_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  cliente_id INT,
  tipo_de_contrato_id INT,
  fecha_inicio DATE NOT NULL,
  fecha_fin DATE NOT NULL,
  condiciones_contrato TEXT NOT NULL,
  vehiculos_incluidos TEXT NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES Clientes (cliente_id),
  FOREIGN KEY (tipo_de_contrato_id) REFERENCES Tipo_de_Contrato (tipo_de_contrato_id)
);

-- 7 Tabla Tipo de Mantenimiento
create table Tipo_de_Mantenimiento (
tipo_de_mantenimiento_id int primary key auto_increment not null, -- id 
nombre_de_mantenimiento varchar(30) not null); -- tipo de mantenimiento

-- 8 Tabla Mantenimiento Preventivo
create table Mantenimiento_Preventivo (
mantenimiento_preventivo_id int primary key auto_increment not null, -- id
vehiculo_id int, -- id
tipo_de_mantenimiento_id int, -- id
fecha_programada date not null, -- Fecha de programacion para el mantenimiento
fecha_realizada date not null, -- fecha de culminacion del mantenimiento
kilometraje_mantenimiento int not null, -- kilometraje del vehiculo al momento del mantenimiento
observaciones text not null, -- observaciones del mantenimiento
foreign key (vehiculo_id) references Vehiculos (vehiculo_id),
foreign key (tipo_de_mantenimiento_id) references Tipo_de_Mantenimiento (tipo_de_mantenimiento_id));

-- 9 Tabla Mecanico
create table Mecanico (
mecanico_id int primary key auto_increment not null, -- id
nombre varchar(30) not null, -- nombre del mecanico
apellido varchar(30) not null, -- apellido del mecanico
especialidad varchar(100) not null, -- especialidad del mecanico
turno text); -- turno del mecanico

-- 10 Tabla Mantenimiento Correctivo
create table Mantenimiento_Correctivo (
mantenimiento_correctivo_id int primary key auto_increment not null, -- id
vehiculo_id int, -- id
mecanico_id int, -- id 
fecha_averia date not null, -- Fecha de la averia del vehiculo
descripcion_averia text not null, -- descripcion de la averia del vehiculo
fecha_inicio_reparacion date not null, -- fecha de incio de la reparacion del vehiculo
fecha_fin_reparacion date not null, -- fecha de finlazacion del vehiculo reparado
respuestos_utilizados text not null, -- repuestos ultilizados en la reparacion del vehiculo
costo_reparacion decimal (10, 2), -- costo de la reparacion
causa_averia varchar(100) not null, -- causa de la averia
prioridad varchar(20) not null, -- prioridad de la reparacion
foreign key (vehiculo_id) references Vehiculos (vehiculo_id),
foreign key(mecanico_id) references Mecanico (mecanico_id));

-- 11 Tabla Proveedor
create table Proveedor (
proveedor_id int primary key auto_increment not null, -- id
nombre varchar(50) not null, -- nombre del proveedor
direccion varchar(200) not null, -- direccion del proveedor
email varchar(30) not null, -- email del proveedor
telefono varchar(20) not null); -- tlf del proveedor


-- 12 Tabla Repuesto
create table Repuesto (
repuesto_id int primary key auto_increment not null, -- id
codigo_repuesto varchar(50) not null unique, -- codigo del repuesto
descripcion varchar(200) not null, -- descripcion del repuesto
marca varchar(50) not null, -- marca del repuesto
modelo varchar(50) not null, -- modelo del repuesto
cantidad_stock int not null, -- disponibilidad del respuesto
precio_unitario decimal (10, 2) not null, -- precio del repuesto
proveedor_id int, -- id
ubicacion_almacen varchar(100) not null, -- ubicacion del almacen
stock_minimo int not null, -- cantidad minima del repuesto
foreign key (proveedor_id) references Proveedor (proveedor_id));

-- 13 Tabla Mantenimiento del Repuesto
create table Mantenimiento_Repuesto (
mantenimiento_repuesto_id int primary key auto_increment not null,
mantenimiento_correctivo_id int, -- id
repuesto_id int, -- id
cantidad int, -- cantidad de repuesto utilizados
foreign key (mantenimiento_correctivo_id) references Mantenimiento_Correctivo (mantenimiento_correctivo_id),
foreign key (repuesto_id) references Repuesto (repuesto_id));

-- 14 Tabla Oredenes de Trabajo
create table Oredenes_de_Trabajo (
ordenes_de_trabajo_id int primary key auto_increment not null, -- id
vehiculo_id int, -- id
tipo_de_mantenimiento_id int, -- id
mecanico_id int, -- id
fecha_inicio date not null, -- fecha de inicio de la orden de trabajo
fecha_fin date not null , -- fecha de finalizacion de la orden de trabajo
descripcion_del_trabajo text not null, -- descripcion del trabajo realizado
respuestos_utilizados text not null, -- respuestos utilizados en el trabajo
costo_total decimal(10, 2), -- costo total del trrabajo
estado_de_la_orden varchar(20) not null, -- estado de la orden del trabjo
foreign key (vehiculo_id) references Vehiculos (vehiculo_id),
foreign key (tipo_de_mantenimiento_id) references Tipo_de_Mantenimiento (tipo_de_mantenimiento_id),
foreign key (mecanico_id) references Mecanico (mecanico_id));

-- 15 Tabla Facturas
create table Facturas (
factura_id int primary key auto_increment not null, -- id
cliente_id int, -- id
contratos_id int, -- id
fecha_de_factura date not null, -- fecha de la factura
importe decimal(10, 2) not null, -- importe de la factura
estado_de_factura varchar(40) not null, -- estado de la factura (pendiente, pagada)
foreign key (cliente_id) references Clientes (cliente_id),
foreign key (contratos_id) references Contratos (contratos_id));

-- 16 Tabla Comiunicacion
create table Comunicacion (
comunicacion_id int primary key auto_increment not null, -- id
cliente_id int, -- id 
vehiculo_id int, -- id 
tipo_comunicacion varchar(50) not null, -- tipo de comunicacion (email, tlf)
mensaje text not null, -- mensaje de la comunicacion
fecha_comunicacion date not null, -- fecha de la comunicacion
foreign key (cliente_id) references Clientes (cliente_id),
foreign key (vehiculo_id) references Vehiculos (vehiculo_id));

-- 17 Tabla Informes Estadisticos
create table Informes_Estadisticos (
informe_estadistico_id int primary key auto_increment not null, -- id
tipo_informe varchar(100) not null, -- tipo de informe (mantenimiento, vtas)
datos_informe text not null); -- datos del informe

-- 18 Tabla Marca de Neumatico
create table Marca_Neumatico (
marca_neumatico_id int primary key auto_increment not null, -- id
marca varchar(50) not null); -- nombre de la marca del neumatico

-- 19 Tabla Modelo de Neumatico
create table Modelo_Neumatico (
modelo_neumatico_id int primary key auto_increment not null, -- id
modelo varchar(50) not null); -- nombre del modelo del neumatico

-- 20 Tabla Neumaticos
CREATE TABLE Neumaticos (
  neumatico_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  vehiculo_id INT,
  marca_neumatico_id INT,
  modelo_neumatico_id INT,
  fecha_instalacion DATE NOT NULL,
  kilometraje_instalacion INT NOT NULL,
  estado_neumatico VARCHAR(50) NOT NULL,
  observaciones TEXT,
  FOREIGN KEY (vehiculo_id) REFERENCES Vehiculos (vehiculo_id),
  FOREIGN KEY (marca_neumatico_id) REFERENCES Marca_Neumatico (marca_neumatico_id),
  FOREIGN KEY (modelo_neumatico_id) REFERENCES Modelo_Neumatico (modelo_neumatico_id)
);

-- 21 Tabla Cita
CREATE TABLE Citas (
    cita_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cliente_id INT NOT NULL,
    vehiculo_id INT NOT NULL,
    fecha_cita DATE NOT NULL,
    tipo_de_mantenimiento_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes (cliente_id),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculos (vehiculo_id),
    FOREIGN KEY (tipo_de_mantenimiento_id) REFERENCES Tipo_de_Mantenimiento (tipo_de_mantenimiento_id)
);

-- 22 Tabla Comunicacion
CREATE TABLE Comunicacion (
    comunicacion_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cliente_id INT NOT NULL,
    vehiculo_id INT NOT NULL,
    tipo_comunicacion VARCHAR(50) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_comunicacion DATE NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES Clientes (cliente_id),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculos (vehiculo_id)
);