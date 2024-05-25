CREATE DATABASE appSigma; 
use appSigma; 
CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  Codigo int ,
  contraseña varchar(10),
  contraseña_anterior varchar(10)
  
);
INSERT INTO users (name, email,Codigo, contraseña) VALUES
('Mixie', 'mbocanegrach@ucvvirtual.edu.pe', 123456, 'Mixie' ); 
INSERT INTO users (name, email,Codigo, contraseña) VALUES
('Brighit', 'mixie.brighit01@gmail.com', 678911, 'Brighit0'); 
INSERT INTO users (name, email,Codigo, contraseña) VALUES
('Maria', 'bocanegramixie@gmail.com', 112233, 'Mixie09');