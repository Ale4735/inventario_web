CREATE DATABASE inventario_db;
USE inventario_db;

CREATE TABLE usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  correo VARCHAR(100) UNIQUE,
  contrasena VARCHAR(255),
  rol VARCHAR(20)
);

CREATE TABLE productos (
  id_producto INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100),
  categoria VARCHAR(50),
  descripcion TEXT,
  cantidad INT,
  precio DECIMAL(10,2),
  fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE movimientos (
  id_movimiento INT AUTO_INCREMENT PRIMARY KEY,
  id_producto INT,
  tipo_movimiento VARCHAR(20),
  cantidad INT,
  fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  observacion VARCHAR(255),
  FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);