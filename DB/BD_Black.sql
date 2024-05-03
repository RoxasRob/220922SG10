Create database signa00; 
use signa00; 

Create table estudiante(
id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido varchar(50),
  edad INT,
  ciclo INT, 
  direccion VARCHAR(100),
  email VARCHAR(100), 
  carrera_id int, 
  foreign key (carrera_id) references carrera(id)
); 
INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Juan', 'Perez Perez', 20, 3, 'Calle Principal 123', 'juan@example.com',1);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Maria', 'Lopez Mendiola', 22, 4, 'Avenida Central 456', 'maria@example.com', 2);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Pedro', 'Ramirez Lopez', 19, 2, 'Plaza Mayor 789', 'pedro@example.com', 3);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Piero', 'Perez Gonzalez', 20, 3, 'Calle Principal 123', 'piero@example.com', 4);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Julio', 'Lopez Hernandez', 22, 4, 'Avenida Central 456', 'julio@example.com', 5);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Andy', 'Ramirez Jimenez', 19, 2, 'Plaza Mayor 789', 'andy@example.com', 6);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Ana', 'Garcia Perez', 21, 3, 'Calle Secundaria 234', 'ana@example.com', 7);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Luis', 'Martinez Sanchez', 20, 4, 'Avenida Principal 567', 'luis@example.com', 8);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Laura', 'Rodriguez Lopez', 23, 2, 'Plaza Central 890', 'laura@example.com', 9);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Carlos', 'Gonzalez Ramirez', 19, 3, 'Calle Mayor 345', 'carlos@example.com', 2);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Sofia', 'Hernandez Garcia', 22, 4, 'Avenida Secundaria 678', 'sofia@example.com', 7);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Jorge', 'Sanchez Martinez', 20, 2, 'Plaza Principal 901', 'jorge@example.com', 4);

INSERT INTO estudiante (nombre, apellido, edad, ciclo, direccion, email, carrera_id)
VALUES ('Mariana', 'Lopez Rodriguez', 21, 3, 'Calle Central 456', 'mariana@example.com', 9);


create table docente(
id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  apellido varchar(50),
  especialidad VARCHAR(50),
  email VARCHAR(100), 
  carrera_id int, 
  foreign key (carrera_id) references carrera(id)
); 
-- sede_id INT,
   -- FOREIGN KEY (sede_id) REFERENCES sedes(id_sede)
   
INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES 
    ('Simon', 'Acosta Mariñas', 'Programación', 'simon@gmail.com', 1),
    ('Carmen', 'Mejia Vega', 'Gestión Empresarial', 'carmen@gmail.com', 2),
    ('Ignacio', 'Lazaro Aquiño', 'Psicología Clínica', 'ignacio@gmail.com', 3);
    
INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('Mario', 'Montaner Quispe', 'Seguridad Informática y Protección de Datos', 'mario.montaner@example.com', 4);

INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('María', 'Lazaro Chero', 'Diseño Arquitectónico y Urbanismo', 'maria.lazaro@example.com', 5);

INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('Carla', 'Maya Quinteros', 'Ciencia de Datos y Analítica Avanzada', 'carla.maya@example.com', 6);

INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('Ana', 'Palomino Herrera', 'Ingeniería Estructural y Construcción', 'ana.palomino@example.com', 7);

INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('Pedro', 'Jiron Mejia', 'Gestión Ambiental y Sostenibilidad', 'pedro.jiron@example.com', 8);

INSERT INTO docente (nombre, apellido, especialidad, email, carrera_id)
VALUES ('Laura', 'Vega Churano', 'Derecho Civil y Legislación Ambiental', 'laura.vega@example.com', 9);


create table cursos(
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(50),
  creditos INT,
  docente_id INT,
  carrera_id int,
  FOREIGN KEY (docente_id) REFERENCES docente(id),
  foreign key (carrera_id) references carrera(id)
); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES 
    ('Programación Avanzada', 3, 1, 1),
    ('Contabilidad Básica', 2, 2, 2),
    ('Psicología Infantil', 2, 3, 3); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Seguridad de la Información', 3, 4, 4); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Diseño Arquitectónico Avanzado', 4, 5, 5);  
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Análisis de Datos en Ciencias', 3, 6, 6);
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Estructuras en Ingeniería Civil', 4, 7, 7); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Gestión Ambiental Empresarial', 3, 8, 8); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Derecho Civil Avanzado', 4, 9, 9); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Seguridad en Redes y Sistemas', 3, 1, 1); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Gestión Estratégica de Empresas', 4, 2, 2);
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Psicología Clínica Avanzada', 3, 3, 3); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Desarrollo de Aplicaciones Web', 4, 1, 1); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Planificación Urbana y Diseño Sostenible', 3, 2, 2); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Análisis Predictivo y Minería de Datos', 4, 3, 3); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Criptografía Avanzada', 3, 4, 4); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Taller de Diseño Urbano', 4, 5, 5); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Big Data Analytics', 3, 6, 6); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Diseño Estructural de Edificios', 4, 7, 7); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Gestión de Residuos y Recursos Naturales', 3, 8, 8); 
INSERT INTO cursos (nombre, creditos, docente_id, carrera_id)
VALUES ('Derecho Laboral y Seguridad Social', 4, 9, 9); 



create table carrera(
id int auto_increment primary key,
nombre varchar(100), 
duracion int
); 
-- agregar facultad?
-- agregar sede sede_id INT,
  --  FOREIGN KEY (sede_id) REFERENCES sedes(id_sede)
  
INSERT INTO carrera (nombre, duracion)
VALUES ('Ingenieria informatica', 5); 
INSERT INTO carrera (nombre, duracion)
VALUES ('Administración de Empresas', 4);
INSERT INTO carrera (nombre, duracion)
VALUES ('Psicología', 5);
INSERT INTO carrera (nombre, duracion)
VALUES ('Ingenieria de ciberseguridad', 5);
INSERT INTO carrera (nombre, duracion)
VALUES ('Arquitectura', 5);
INSERT INTO carrera (nombre, duracion)
VALUES ('Ingenieria de ciencias de datos', 5);  
INSERT INTO carrera (nombre, duracion)
VALUES ('Ingenieria civil', 5); 
INSERT INTO carrera (nombre, duracion)
VALUES ('Ingenieria ambiental', 5); 
INSERT INTO carrera (nombre, duracion)
VALUES ('Derecho', 6); 
CREATE TABLE IF NOT EXISTS inscripcion (
    id_inscripcion INT PRIMARY KEY AUTO_INCREMENT,
    id_estudiante INT,
    id_curso INT,
    id_docente INT,
    horario VARCHAR(100),
    FOREIGN KEY (id_estudiante) REFERENCES estudiante(id),
    FOREIGN KEY (id_curso) REFERENCES cursos(id),
    FOREIGN KEY (id_docente) REFERENCES docente(id)
);
INSERT INTO inscripcion (id_estudiante, id_curso, id_docente, horario, id_carrera) VALUES
(1, 1, 1, 'Lunes 7:00 - 12:00', 1), 
(1, 10, 1, 'Martes 7:00 - 12:00', 1),
(1, 13, 1, 'Miércoles 7:00 - 12:00', 1), 
(2, 2, 2, 'Lunes 7:00 - 11:00', 2),
(2, 11, 2, 'Martes 13:00 - 16:00', 2),
(2, 14, 2, 'Jueves 7:00 - 12:00', 2),
(3, 3, 3, 'Viernes 9:00 - 11:00', 3),
(3, 12, 3, 'Martes 13:00 - 16:00', 3),
(3, 15, 3, 'Viernes 9:00 - 11:00', 3),
(4, 4, 4, 'Lunes 7:00 - 12:00', 4),
(4, 16, 4, 'Martes 13:00 - 16:00', 4),
(5, 5, 5, 'Viernes 9:00 - 11:00', 5),
(5, 17, 5, 'Lunes 7:00 - 12:00', 5),
(6, 6, 6, 'Lunes 7:00 - 12:00', 6),
(6, 18, 6, 'Jueves 7:00 - 12:00', 6),
(7, 7, 7, 'Lunes 7:00 - 12:00', 7),
(7, 19, 7, 'Lunes 7:00 - 12:00', 7),
(8, 8, 8, 'Martes 13:00 - 16:00', 8),
(8, 20, 8, 'Lunes 7:00 - 12:00', 8),
(9, 9, 9, 'Lunes 7:00 - 12:00', 9),
(9, 21, 9, 'Jueves 9:00 - 10:00', 9); 
-- PARA EDITAR ALGUNA TABLA (NO EJECUTADO)
ALTER TABLE inscripcion
ADD id_carrera int,
ADD FOREIGN KEY (id_carrera) REFERENCES carrera(id);
-- tablas
select*from carrera; 
select*from estudiante; 
select*from cursos; 
select*from docente; 

-- consulta
-- horario, CUANTOS CURSOS ESTAN INSCRITO
SELECT 
    estudiante.id AS id_estudiante,
    estudiante.nombre AS nombre_estudiante,
    cursos.id AS id_curso,
    cursos.nombre AS nombre_curso,
     carrera.nombre AS Nombre_carrera,
    docente.id AS id_docente,
    docente.nombre AS nombre_docente,
    inscripcion.horario
FROM 
    inscripcion
JOIN estudiante ON inscripcion.id_estudiante = estudiante.id
JOIN cursos ON inscripcion.id_curso = cursos.id
JOIN carrera ON inscripcion.id_carrera= carrera.id
JOIN docente ON inscripcion.id_docente = docente.id
WHERE estudiante.id = 2;
-- horario

-- Eliminar un PROCEDURE
DROP PROCEDURE IF EXISTS RegistrarEstudianteEnCursos;

-- cREACIÓN DE PRECEDURE  PARA OBTENER INFORMACION DEL ESTUDIANTE
DELIMITER //

CREATE PROCEDURE ObtenerInfoEstudiante(IN estudiante_id INT)
BEGIN
    SELECT 
        estudiante.nombre AS Nombre_estudiante,
        estudiante.apellido AS Apellido_estudiante,
        estudiante.edad,
        estudiante.ciclo,
        estudiante.direccion,
        estudiante.email,
        carrera.nombre AS Nombre_carrera,
        cursos.nombre AS Nombre_curso,
        docente.nombre AS Nombre_docente,
        docente.apellido AS Apellido_docente
    FROM 
        estudiante
    JOIN carrera ON estudiante.carrera_id = carrera.id
    JOIN cursos ON cursos.carrera_id = carrera.id
    JOIN docente ON cursos.docente_id = docente.id
    WHERE estudiante.id = estudiante_id;
END //
DELIMITER ;
-- EJECUCIÓN
CALL ObtenerInfoEstudiante(5);

-- TRILCE
CREATE TABLE sedes (
    id_sede INT PRIMARY KEY AUTO_INCREMENT,
    nombre_sede VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(20)
);
select*from sedes; 
INSERT INTO sedes (nombre_sede, direccion, telefono) VALUES
('Sede Los Olivos', 'Av. Alfredo Mendiola 6232', '913 771 519'),
('Sede Trujillo', 'Av. Victor Larco 1770', '991 163 425'),
('Sede Los Ate', 'Carretera Cntral Km. 8.2', '989 087 188'),
('Sede Callao', 'Av. Argentina 1795, Lima', '986 970 441'),
('Sede San Juan de Lurigancho', 'Av. Del parque 640', '(01) 202-4342'),
('Sede Chiclayo', 'Av. Carretera Pimentel Km. 3.5', '961 213 683'),
('Sede Chimbote', 'Urb. Buenos Aires Mz. H Lt. 1 Av. Central Nuevo chimbote', '943 032 207'),
('Sede Piura', 'Prolongación Av. chulucanas s/n', '9937 545 386'),
('Sede Tarapoto', 'Carretera Marginal Norte Fernado Velaunde Terry Km 8.5', '980 378 803'),
('Sede Chepén', 'Carretera Panamericana Norte Km. 695', '948 985 767'),
('Sede Huaraz', 'Av. Independencia 1488 Urb. Palmira Baja', '945 311 462'),
('Sede Moyobamba', 'Jr. 25 de mayo 158 Barrio Lluyllucucha/ Jr. Dos de mayo 400, Barrio zaragoza/Jr. Jose De san Martín 511-513-515', '9997 687 632');
CREATE TABLE convenios (
    id_convenio INT PRIMARY KEY AUTO_INCREMENT,
    nombre_convenio VARCHAR(255),
    tipo_convenio VARCHAR(100),
	pais varchar(100),
    fecha_inicio DATE,
    fecha_fin DATE,
    descripcion TEXT
);
-- Inserción 1
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de intercambio estudiantil en Universidad Veracruzana', 'Intercambio Estudiantil', 'México', '2024-05-01', '2025-04-30', 'Convenio para facilitar el intercambio de estudiantes entre la Universidad Cesar Vallejo y la Universidad Veracruzana.');
-- Inserción 2
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de investigación en Universidad Santo Tomás ', 'Investigación', 'Colombia', '2024-06-15', '2025-06-14', 'Convenio para colaborar en proyectos de investigación entre la Universidad Cesar Vallejo y la Universidad Santo Tomás.');
-- Inserción 3
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de prácticas profesionales en Universidad de Investigación y Desarrollo', 'Prácticas Profesionales', 'Colombia', '2024-07-01', '2024-12-31', 'Convenio para que los estudiantes de la Universidad Cesar Vallejo realicen prácticas profesionales en la Universidad de Investigación y Desarrollo.');
-- Inserción 4
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de intercambio estudiantil en Universidad de Concepción', 'Intercambio Estudiantil', 'Chile', '2024-08-01', '2025-07-31', 'Convenio para facilitar el intercambio de estudiantes entre la Universidad Cesar Vallejo y la Universidad de Concepción.');
-- Inserción 5
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de investigación en Institución Universitaria Antonio José Camacho', 'Investigación', 'Colombia', '2024-09-15', '2025-09-14', 'Convenio para colaborar en proyectos de investigación entre la Universidad Cesar Vallejo y la Universitaria Antonio José Camacho.');
-- Inserción 6
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de prácticas profesionales con Colegio de Administradores de Lambayeque', 'Prácticas Profesionales', 'Peú', '2024-10-01', '2025-03-31', 'Convenio para que los estudiantes de la Universidad Cesar Vallejo realicen prácticas profesionales en el Colegio de Administradores de Lambayeque.');
-- Inserción 7
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de intercambio estudiantil con la empresa Cámara de Comercio', 'Prácticas Profesionales', 'Perú', '2024-11-01', '2025-10-31', 'Convenio para facilitar el intercambio de estudiantes entre la Universidad Cesar Vallejo y la Empresa cámara de comercio.');
-- Inserción 8
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de investigación con Empresa MISKYMAYO', 'Prácticas Profesionales', 'Perú', '2024-12-15', '2025-12-14', 'Convenio para colaborar en proyectos de investigación entre la Universidad Cesar Vallejo y la Empresa MISKYMAYO.');
-- Inserción 9
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de prácticas profesionales con la empresa TOMONORTE', 'Prácticas Profesionales', 'Perú', '2025-01-01', '2025-06-30', 'Convenio para que los estudiantes de la Universidad Cesar Vallejo realicen prácticas profesionales en la empresa TOMONORTE.');
-- Inserción 10
INSERT INTO convenios (nombre_convenio, tipo_convenio, pais, fecha_inicio, fecha_fin, descripcion)
VALUES ('Convenio de intercambio estudiantil con el Colegio químico farmacéutico', 'Prácticas Profesionales', 'Perú', '2025-02-01', '2026-01-31', 'Convenio para facilitar el intercambio de estudiantes entre la Universidad Cesar Vallejo y el Colegio químico farmacéutico.');
-- viewa por pais
CREATE VIEW vista_convenios_pais AS
SELECT pais, COUNT(*) AS cantidad_convenios
FROM convenios
GROUP BY pais;

CREATE TABLE fundadores (
    id_fundador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    apellido VARCHAR(255),
    fecha_nacimiento DATE
);
INSERT INTO fundadores (nombre, apellido, fecha_nacimiento) VALUES ('César', 'Acuña Peralta', '1952-08-11');

-- funcion cantidad de estudiantes por ciclo 
DELIMITER //

CREATE FUNCTION CantidadEstudiantesPorCiclos(ciclo INT) RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE cantidad_estudiantes INT;
    SELECT COUNT(*) INTO cantidad_estudiantes
    FROM estudiante
    WHERE ciclo = ciclo;
    RETURN cantidad_estudiantes;
END //

DELIMITER ;
SELECT CantidadEstudiantesPorCiclos(3) AS Estudiantes_Ciclo_3;


SHOW FUNCTION STATUS WHERE Db = 'signa00' AND Name = 'CantidadEstudiantesPorCiclo';
DROP FUNCTION IF EXISTS CantidadEstudiantesPorCiclo;

-- USUARIOS
CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    correo VARCHAR(100),
    tipo_usuario ENUM('estudiante', 'docente'),
    contraseña varchar(255)
);
ALTER TABLE estudiante ADD COLUMN usuario_id INT, ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);
ALTER TABLE docente ADD COLUMN usuario_id INT, ADD FOREIGN KEY (usuario_id) REFERENCES usuarios(id);
-- Insertar datos con correos electrónicos y contraseñas hasheadas (uso ilustrativo de SHA2)
INSERT INTO usuarios (correo, tipo_usuario, contraseña)
VALUES
    ('juan@example.com', 'estudiante', '123'),
    ('maria@example.com',  'estudiante','456'),
    ('simon@gmail.com',  'docente', '789'),
     ('pedro@example.com', 'estudiante', '101'),
    ('carmen@gmail.com','docente', '1212'),
     ('piero@example.com','estudiante', '3445'),
    ('ignacio@gmail.com',  'docente', '333'),
     ('julio@example.com', 'estudiante', '323'),
    ('mario.montaner@gmail.com', 'docente', '4567'),
    ('maria.lazaro@gmail.com', 'docente', '12345');
select*from usuarios; 





 





