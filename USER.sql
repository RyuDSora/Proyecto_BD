--en caso que "SYSTEM" no de permiso de crear el usuario 
--se utiliza el siguiente comando:

ALTER SESSION SET "_ORACLE_SCRIPT"=TRUE;

--Crear nuevo 
--usuario(esquema) = TWITTERX 
--password         = oracle 

CREATE USER TWITTERX
  IDENTIFIED BY "oracle"
  DEFAULT TABLESPACE USERS
  TEMPORARY TABLESPACE TEMP;
--asignar cuota ilimitada al tablespace por defecto  
ALTER USER TWITTERX QUOTA UNLIMITED ON USERS;

--Asignar privilegios basicos
GRANT create session TO TWITTERX;
GRANT create table TO TWITTERX;
GRANT create view TO TWITTERX;
GRANT create any trigger TO TWITTERX;
GRANT create any procedure TO TWITTERX;
GRANT create sequence TO TWITTERX;
GRANT create synonym TO TWITTERX;
GRANT create materialized view TO TWITTERX;
