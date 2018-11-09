-- ingresar a la base de datos -u para indicar el usuario -p para que pida la contraseña y -h para el localhost
sudo mysql -u root -p -h localhost
-- se debe ingresar la contraseña
-- mostrar las bases de datos existentes
SHOW DATABASES;
-- crear la base de datos llamada tienda_videojuegos
CREATE DATABASE tienda_videojuegos;
-- mostrar que la base de datos se creo correctamente
SHOW DATABASES;
-- seleccionar la base de datos creada anteriormente
USE tienda_videojuegos;
-- crear la tabla llamada videojuegos
CREATE TABLE IF NOT EXISTS videojuegos( 
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nombre VARCHAR(100) NOT NULL, 
    puntos_maximos INT(100) DEFAULT 100 NOT NULL, 
    niveles ENUM('1','2','3','4','5','6','7','8','9','10') 
);
-- mostrar que la tabla se creo correctamente
SHOW TABLES;
-- mostrando la descripción de la tabla creada anteriormente
DESCRIBE videojuegos
-- insertando 3 filas o registros en la tabla
INSERT INTO videojuegos(nombre, niveles) VALUES
( 'Fifa 2019', '1'),
('Call of Duty', '7'),
('God of War','10');
-- consultando la tabla anteriormente creada
SELECT * FROM videojuegos;
-- actualizando la tabla videojuegos
UPDATE videojuegos SET niveles='10' WHERE id=1;
-- consultando la tabla para ver que se actualizo correctamente
SELECT * FROM videojuegos;
-- eliminando un registro o fila de la tabla
DELETE FROM videojuegos WHERE id=1;
-- consultando que efectivamente haya eliminado el registro correspondiente
SELECT * FROM videojuegos;
-- saliendo de los comandos de SQL
EXIT;