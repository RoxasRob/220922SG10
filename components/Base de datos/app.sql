CREATE DATABASE app; 
use app; 
CREATE TABLE users (
   id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  Codigo int 
);
INSERT INTO users (name, email,codigo) VALUES
('Mixie', 'mbocanegrach@ucvvirtual.edu.pe', 123456 ); 
INSERT INTO users (name, email,codigo) VALUES
('Brighit', 'mixie.brighit01@gmail.com', 678911); 
INSERT INTO users (name, email,codigo) VALUES
('Maria', 'bocanegramixie@gmail.com', 112233); 
DELETE FROM users WHERE id = 1 OR id = 2 OR id = 3;
ALTER TABLE users ADD contraseña varchar(10);
ALTER TABLE users ADD Nueva_contraseña varchar(10);
ALTER TABLE users DROP COLUMN Nueva_contraseña;
ALTER TABLE users DROP COLUMN contraseña;
select * from users; 