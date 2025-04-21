CREATE USER exercicios IDENTIFIED BY 123456;

GRANT connect, resource TO exercicios;

ALTER USER exercicios QUOTA 100M ON users;