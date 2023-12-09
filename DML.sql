--sequencias utilizadas en cada tabla para las llaves primarias, las cuales seran numeros enteros
CREATE SEQUENCE SQ_BUSQUEDA INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_COMENTARIO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_COMUNIDAD INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_ESTADO_MSJ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_GENERO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_HASHTAG INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_LIKE INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_LISTA INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_LISTA_US INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_LUGAR INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_MEDIA INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_MSJ INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_MIEMBRO_X_COM INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_MOD_X_COM INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_NOTIFICACION INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PRIVACIDAD INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_PUBLICACION INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_REPOST INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_SEGUIDOR INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_SEGUIDOR_LIST INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_SILENCIADO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_TELEFONO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_TIPO_NOTI INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_TIPO_MEDIA INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_USUARIO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_USUARIO_BLOQUEADO INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SQ_VIEW_POST INCREMENT BY 1 START WITH 1;


--datos de relleno en la tabla de generos
INSERT INTO TBL_GENEROS ( ID_GENERO, GENERO) VALUES (SQ_GENERO.NEXTVAL,'HOMBRE');
INSERT INTO TBL_GENEROS ( ID_GENERO, GENERO) VALUES (SQ_GENERO.NEXTVAL,'MUJER');


--datos de relleno en la tabla de tipos de multimedia
INSERT INTO TBL_TIPOS_MEDIAS (tipo_media_id,tipo) VALUES (SQ_TIPO_MEDIA.nextval,'AUDIO');
INSERT INTO TBL_TIPOS_MEDIAS (tipo_media_id,tipo) VALUES (SQ_TIPO_MEDIA.nextval,'VIDEO');
INSERT INTO TBL_TIPOS_MEDIAS (tipo_media_id,tipo) VALUES (SQ_TIPO_MEDIA.nextval,'GIF');
INSERT INTO TBL_TIPOS_MEDIAS (tipo_media_id,tipo) VALUES (SQ_TIPO_MEDIA.nextval,'IMAGEN');

--datos de relleno en la tabla de gmultimedia
INSERT INTO tbl_medias ( multimedia_id, tipo_media_id, nombre_media, media) VALUES (SQ_MEDIA.nextval,4,'default_profile',null);
INSERT INTO tbl_medias ( multimedia_id, tipo_media_id, nombre_media, media) VALUES (SQ_MEDIA.nextval,4,'default_back',null);
--insertar las imagenes con el IDE siguiendo los pasos del mismo

--datos de relleno en la tabla de estados de los mensajes
INSERT INTO tbl_estados_mensajes(estado_id,estado) VALUES (SQ_ESTADO_MSJ.nextval,'enviado');
INSERT INTO tbl_estados_mensajes(estado_id,estado) VALUES (SQ_ESTADO_MSJ.nextval,'recibido');
INSERT INTO tbl_estados_mensajes(estado_id,estado) VALUES (SQ_ESTADO_MSJ.nextval,'leido');


--datos de relleno en la tabla de privacidad
INSERT INTO tbl_privacidades ( privacidad_id, nombre ) VALUES ( SQ_PRIVACIDAD.nextval,'publico');
INSERT INTO tbl_privacidades ( privacidad_id, nombre ) VALUES ( SQ_PRIVACIDAD.nextval,'privado');

--datos de relleno en la tabla de lugares
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Honduras',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'El Salvador',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Nicaragua',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Costa Rica',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Guatemala',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Panama',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Belice',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,1,'Francisco Morazan',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,1,'Cortes',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,1,'El Paraiso',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,8,'Tegucigalpa',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,9,'San Pedro Sula',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,10,'Danli',null,null);
INSERT INTO tbl_lugares ( id_lugar, id_lugar_padre, nombre_lugar, longitud, latitud) VALUES (SQ_LUGAR.nextval,null,'Mexico',null,null);

--datos de relleno en la tabla de usuarios
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,1,1,1,2,'Jose Miguel','Rodriguez','@JMRodriguez',to_date('11-AUG-1999','DD-MON-RRRR'),'jmrodriguez@correo.com','@123ASDjmr',null,null,to_date('1-FEB-15','DD-MON-RR'),'y');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,2,4,1,2,'Maria','Rojas','@MRojas',to_date('2-JUN-1990','DD-MON-RRRR'),'mrojas@correo.com','12345678',null,null,to_date('1-FEB-15','DD-MON-RR'),'y');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,1,10,1,2,'Francisco','Ventura','@FVent',to_date('7-JUL-1994','DD-MON-RRRR'),'fran_vent@correo.com','@FV199407',null,null,to_date('1-FEB-15','DD-MON-RR'),'y');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,2,3,1,2,'Raquel','Garcia','@Raqui',to_date('10-DEC-1980','DD-MON-RRRR'),'ragarcia@correo.com','contrasenia',null,null,to_date('1-FEB-15','DD-MON-RR'),'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,1,5,1,2,'Pablo','Dominguez','@Pablo',to_date('1-JAN-2000','DD-MON-RRRR'),'dominguezpablo@correo.com','@seguro123',null,null, sysdate ,'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,2,6,1,2,'Katerin Suyapa','Triminio','@Yapa',to_date('15-SEP-1995','DD-MON-RRRR'),'katy3@correo.com','@qA12,.aspp',null,null,to_date('15-APR-18','DD-MON-RR'),'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,2,8,1,2,'Daniela','Matamoros','@Nani',to_date('7-AUG-2009','DD-MON-RRRR'),'daniela14@correo.com','freefire',null,null,to_date('2-SEP-20','DD-MON-RR'),'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,2,8,1,2,'Astrid','Avila','@NegritaBella',to_date('16-MAR-2010','DD-MON-RRRR'),'negra_bella@correo.com','robloxycraft',null,null,to_date('1-SEP-20','DD-MON-RR'),'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,1,2,1,2,'Cesar','Grandes','@CheChe',to_date('8-AUG-2010','DD-MON-RRRR'),'cesarelgrande@correo.com','1234brum@',null,null,sysdate,'n');
INSERT INTO tbl_usuarios (id_usuario,id_genero,id_lugar,foto_perfil,foto_portada,nombre,apellido,alias_usuario,fecha_nacimiento,correo_electronico,contrasena,bio,website,fecha_creado,verificado) 
	VALUES (SQ_USUARIO.nextval,1,10,1,2,'Luis','Matamoros','@ElViejo',to_date('5-AUG-1976','DD-MON-RRRR'),'luis_mat@correo.com','@Navidad123@',null,null,to_date('15-JUN-00','DD-MON-RR')  ,'n');


--datos de relleno en la tabla de seguidores
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,10,9,sysdate);
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,10,7,to_date('3-SEP-20','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,10,8,to_date('3-SEP-20','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,1,8,to_date('3-NOV-20','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,2,8,to_date('3-OCT-20','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,3,8,to_date('3-DEC-20','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,4,8,to_date('3-JAN-21','DD-MON-RR'));
INSERT INTO tbl_seguidores (id_seguido, id_usuario, id_usuario_seguidor, fecha_seguido) VALUES (SQ_SEGUIDOR.nextval,1,3,sysdate);


--datos de relleno en la tabla de mensajes
INSERT INTO tbl_mensajes ( id_mensaje,emisor,receptor,mensaje_padre,mensaje,estado_id,fecha) VALUES (SQ_MSJ.nextval,8,7,null,'Hola Daniela',3,TO_DATE('7-AUG-23','DD-MON-RR'));
INSERT INTO tbl_mensajes ( id_mensaje,emisor,receptor,mensaje_padre,mensaje,estado_id,fecha) VALUES (SQ_MSJ.nextval,7,8,1,'Hola Astrid',3,TO_DATE('7-AUG-23','DD-MON-RR'));
INSERT INTO tbl_mensajes ( id_mensaje,emisor,receptor,mensaje_padre,mensaje,estado_id,fecha) VALUES (SQ_MSJ.nextval,8,7,2,'Feliz Cumple',1,TO_DATE('7-AUG-23','DD-MON-RR'));
INSERT INTO tbl_mensajes ( id_mensaje,emisor,receptor,mensaje_padre,mensaje,estado_id,fecha) VALUES (SQ_MSJ.nextval,2,1,null,'Anio Nuevo',2,TO_DATE('1-JAN-23','DD-MON-RR'));


INSERT INTO TBL_PUBLICACIONES(ID_PUBLICACION,ID_USUARIO_PUBLICA,ID_PUBLICACION_PADRE,ID_HASHTAG,CONTENIDO,FECHA_PUBLICACION)
VALUES(SQ_PUBLICACION.NEXTVAL,1,NULL,NULL,'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eligendi dolor maiores corporis? Doloribus officiis debitis optio deleniti voluptatem veniam delectus, esse quia vel porro, rerum ipsum aperiam eos soluta corrupti.',TO_DATE('1-JAN-23','DD-MON-RR'));



INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HOLA MUNDO',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HONDURAS',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'BDI',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HOLA',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'LIGA',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'LIGA NACIONAL',TO_DATE('08-DEC-23','DD-MON-RR'),2);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'LIGA NACIONAL',TO_DATE('08-DEC-23','DD-MON-RR'),1);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HOLA MUNDO',TO_DATE('08-DEC-23','DD-MON-RR'),10);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HOLA MUNDO',TO_DATE('08-DEC-23','DD-MON-RR'),3);
INSERT INTO TBL_BUSQUEDAS (ID_BUSQUEDA,PALABRAS,FECHA_BUSQUEDA,ID_USUARIO)
VALUES (SQ_BUSQUEDA.nextval,'HOLA MUNDO',TO_DATE('08-DEC-23','DD-MON-RR'),2);
commit;
