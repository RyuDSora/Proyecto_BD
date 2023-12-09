-- Generado por Oracle SQL Developer Data Modeler 19.4.0.350.1424
--   en:        2023-11-30 20:14:30 CST
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g



CREATE TABLE tbl_busquedas (
    id_busqueda     INTEGER NOT NULL,
    id_usuario      INTEGER NOT NULL,
    palabras        NVARCHAR2(150),
    fecha_busqueda  DATE
);

ALTER TABLE tbl_busquedas ADD CONSTRAINT tbl_busquedas_pk PRIMARY KEY ( id_busqueda );

CREATE TABLE tbl_comentarios (
    id_comentarios       INTEGER NOT NULL,
    id_publicacion       INTEGER NOT NULL,
    id_usuario_comenta   INTEGER NOT NULL,
    id_comentario_padre  INTEGER,
    id_hashtag           INTEGER,
    comentario           INTEGER,
    fecha_comentario     INTEGER
);

ALTER TABLE tbl_comentarios ADD CONSTRAINT tbl_mensiones_pk PRIMARY KEY ( id_comentarios );

CREATE TABLE tbl_comunidades (
    comunidad_id           INTEGER NOT NULL,
    creador                INTEGER NOT NULL,
    privacidad_id          INTEGER NOT NULL,
    nombre_comunidad       VARCHAR2(50),
    descripcion_comunidad  VARCHAR2(100),
    reglas                 VARCHAR2(2000),
    info                   VARCHAR2(200),
    fecha_creacion         DATE
);

ALTER TABLE tbl_comunidades ADD CONSTRAINT tbl_comunidades_pk PRIMARY KEY ( comunidad_id );

CREATE TABLE tbl_estados_mensajes (
    estado_id  INTEGER NOT NULL,
    estado     VARCHAR2(50)
);

ALTER TABLE tbl_estados_mensajes ADD CONSTRAINT tbl_estados_mensajes_pk PRIMARY KEY ( estado_id );

CREATE TABLE tbl_generos (
    id_genero  INTEGER NOT NULL,
    genero     NVARCHAR2(50)
);

ALTER TABLE tbl_generos ADD CONSTRAINT tbl_generos_pk PRIMARY KEY ( id_genero );

CREATE TABLE tbl_hashtags (
    id_hashtag  INTEGER NOT NULL,
    detalles    VARCHAR2(100)
);

ALTER TABLE tbl_hashtags ADD CONSTRAINT tbl_hashtags_pk PRIMARY KEY ( id_hashtag );

CREATE TABLE tbl_likes (
    like_id         INTEGER NOT NULL,
    id_usuario      INTEGER NOT NULL,
    id_publicacion  INTEGER,
    id_repost       INTEGER,
    id_comentarios  INTEGER,
    fecha_like      DATE
);

ALTER TABLE tbl_likes ADD CONSTRAINT tbl_likes_pk PRIMARY KEY ( like_id );

CREATE TABLE tbl_listas (
    id_lista       INTEGER NOT NULL,
    creador        INTEGER NOT NULL,
    privacidad_id  INTEGER NOT NULL,
    foto_portada   INTEGER,
    nombre_lista   NVARCHAR2(150),
    descripcion    NVARCHAR2(1500)
);

ALTER TABLE tbl_listas ADD CONSTRAINT tbl_listas_pk PRIMARY KEY ( id_lista );

CREATE TABLE tbl_listas_x_usuarios (
    list_x_us_id  INTEGER NOT NULL,
    id_lista      INTEGER NOT NULL,
    id_usuario    INTEGER NOT NULL
);

ALTER TABLE tbl_listas_x_usuarios ADD CONSTRAINT tbl_listas_x_usuarios_pk PRIMARY KEY ( list_x_us_id );

CREATE TABLE tbl_lugares (
    id_lugar        INTEGER NOT NULL,
    id_lugar_padre  INTEGER,
    nombre_lugar    NVARCHAR2(150),
    longitud        NUMBER,
    latitud         NUMBER
);

ALTER TABLE tbl_lugares ADD CONSTRAINT tbl_lugares_pk PRIMARY KEY ( id_lugar );

CREATE TABLE tbl_medias (
    multimedia_id  INTEGER NOT NULL,
    tipo_media_id  INTEGER NOT NULL,
    nombre_media   VARCHAR2(50),
    media          BLOB
);

ALTER TABLE tbl_medias ADD CONSTRAINT tbl_medias_pk PRIMARY KEY ( multimedia_id );

CREATE TABLE tbl_mensajes (
    id_mensaje     INTEGER NOT NULL,
    emisor         INTEGER NOT NULL,
    receptor       INTEGER NOT NULL,
    mensaje_padre  INTEGER,
    mensaje        NVARCHAR2(200),
    estado_id      INTEGER NOT NULL,
    fecha          DATE
);

ALTER TABLE tbl_mensajes ADD CONSTRAINT tbl_mensajes_privados_pk PRIMARY KEY ( id_mensaje );

CREATE TABLE tbl_miembros_x_comunidades (
    miem_x_com_id  INTEGER NOT NULL,
    comunidad_id   INTEGER NOT NULL,
    miembro        INTEGER NOT NULL
);

ALTER TABLE tbl_miembros_x_comunidades ADD CONSTRAINT tbl_miembros_x_comunidades_pk PRIMARY KEY ( miem_x_com_id );

CREATE TABLE tbl_moderadores_x_comunidades (
    mod_x_com_id  INTEGER NOT NULL,
    comunidad_id  INTEGER NOT NULL,
    moderador     INTEGER NOT NULL
);

ALTER TABLE tbl_moderadores_x_comunidades ADD CONSTRAINT tbl_mod_x_comunidades_pk PRIMARY KEY ( mod_x_com_id );

CREATE TABLE tbl_notificaciones (
    id_notificacion        INTEGER NOT NULL,
    id_tipo_notificacion   INTEGER NOT NULL,
    id_usuario             INTEGER NOT NULL,
    id_usuario_procedente  INTEGER NOT NULL,
    fecha                  DATE,
    enlace                 NVARCHAR2(1500)
);

ALTER TABLE tbl_notificaciones ADD CONSTRAINT tbl_notificaciones_pk PRIMARY KEY ( id_notificacion );

CREATE TABLE tbl_privacidades (
    privacidad_id  INTEGER NOT NULL,
    bombre         VARCHAR2(50)
);

ALTER TABLE tbl_privacidades ADD CONSTRAINT tbl_privacidades_pk PRIMARY KEY ( privacidad_id );

CREATE TABLE tbl_publicaciones (
    id_publicacion        INTEGER NOT NULL,
    id_usuario_publica    INTEGER NOT NULL,
    id_publicacion_padre  INTEGER,
    id_hashtag            INTEGER,
    contenido             NVARCHAR2(1500),
    fecha_publicacion     DATE
);

ALTER TABLE tbl_publicaciones ADD CONSTRAINT tbl_publicaciones_pk PRIMARY KEY ( id_publicacion );

CREATE TABLE tbl_reposts (
    id_repost          INTEGER NOT NULL,
    id_publicacion     INTEGER NOT NULL,
    id_usuario_repost  INTEGER NOT NULL,
    fecha_repost       DATE
);

ALTER TABLE tbl_reposts ADD CONSTRAINT "TBL_RE-POSTS_PK" PRIMARY KEY ( id_repost );

CREATE TABLE tbl_seguidores (
    id_seguido           INTEGER NOT NULL,
    id_usuario           INTEGER NOT NULL,
    id_usuario_seguidor  INTEGER NOT NULL,
    fecha_seguido        DATE
);

ALTER TABLE tbl_seguidores
    ADD CONSTRAINT tbl_seguidores_pk PRIMARY KEY ( id_usuario,
                                                   id_usuario_seguidor,
                                                   id_seguido );

CREATE TABLE tbl_seguidores_x_listas (
    seg_x_list_id  INTEGER NOT NULL,
    id_lista       INTEGER NOT NULL,
    seguidor       INTEGER NOT NULL,
    fecha_seguir   DATE
);

ALTER TABLE tbl_seguidores_x_listas ADD CONSTRAINT tbl_seguidores_x_listas_pk PRIMARY KEY ( seg_x_list_id );

CREATE TABLE tbl_silenciados (
    silencio_id            INTEGER NOT NULL,
    id_usuario             INTEGER NOT NULL,
    id_usuario_silenciado  INTEGER NOT NULL,
    fecha_silenciado       DATE
);

ALTER TABLE tbl_silenciados ADD CONSTRAINT tbl_silenciados_pk PRIMARY KEY ( silencio_id );

CREATE TABLE tbl_telefonos (
    id_telefono      INTEGER NOT NULL,
    id_usuarios      INTEGER NOT NULL,
    numero_telefono  INTEGER,
    area             NVARCHAR2(50)
);

ALTER TABLE tbl_telefonos ADD CONSTRAINT tbl_telefonos_pk PRIMARY KEY ( id_telefono );

CREATE TABLE tbl_tipo_notificacion (
    id_tipo_notificacion  INTEGER NOT NULL,
    notificacion          NVARCHAR2(150)
);

ALTER TABLE tbl_tipo_notificacion ADD CONSTRAINT tbl_tipo_notificacion_pk PRIMARY KEY ( id_tipo_notificacion );

CREATE TABLE tbl_tipos_medias (
    tipo_media_id  INTEGER NOT NULL,
    tipo           VARCHAR2(50)
);

ALTER TABLE tbl_tipos_medias ADD CONSTRAINT tbl_tipos_medias_pk PRIMARY KEY ( tipo_media_id );

CREATE TABLE tbl_usuarios (
    id_usuario          INTEGER NOT NULL,
    id_genero           INTEGER NOT NULL,
    id_lugar            INTEGER NOT NULL,
    foto_perfil         INTEGER NOT NULL,
    foto_portada        INTEGER NOT NULL,
    nombre              NVARCHAR2(50),
    apellido            NVARCHAR2(50),
    alias_usuario       NVARCHAR2(50),
    fecha_nacimiento    DATE,
    correo_electronico  NVARCHAR2(50),
    contrasena          NVARCHAR2(50),
    bio                 NVARCHAR2(50),
    website             NVARCHAR2(150),
    fecha_creado        DATE,
    verificado          CHAR(1)
);

ALTER TABLE tbl_usuarios ADD CONSTRAINT tbl_usuarios_pk PRIMARY KEY ( id_usuario );

CREATE TABLE tbl_usuarios_bloqueados (
    id_usuario            INTEGER NOT NULL,
    id_usuario_bloqueado  INTEGER NOT NULL,
    fecha_bloqueo         DATE
);

ALTER TABLE tbl_usuarios_bloqueados ADD CONSTRAINT tbl_usuarios_bloqueados_pk PRIMARY KEY ( id_usuario,
                                                                                            id_usuario_bloqueado );

CREATE TABLE tbl_visualizaciones_x_posts (
    id_visualizacion     INTEGER NOT NULL,
    id_usuario_ver       INTEGER NOT NULL,
    id_publicacion       INTEGER,
    id_comentarios       INTEGER,
    fecha_visualizacion  DATE
);

ALTER TABLE tbl_visualizaciones_x_posts ADD CONSTRAINT tbl_visualizaciones_x_posts_pk PRIMARY KEY ( id_visualizacion );

ALTER TABLE tbl_busquedas
    ADD CONSTRAINT tbl_busq_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_com_tbl_com_fk FOREIGN KEY ( id_comentario_padre )
        REFERENCES tbl_comentarios ( id_comentarios );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_coms_tbl_hash_fk FOREIGN KEY ( id_hashtag )
        REFERENCES tbl_hashtags ( id_hashtag );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_coms_tbl_publs_fk FOREIGN KEY ( id_publicacion )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_comentarios
    ADD CONSTRAINT tbl_coms_tbl_us_fk FOREIGN KEY ( id_usuario_comenta )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_comunidades
    ADD CONSTRAINT tbl_comu_tbl_us_fk FOREIGN KEY ( creador )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_comunidades
    ADD CONSTRAINT "TBL_COMUN_TBL_PRIV}_FK" FOREIGN KEY ( privacidad_id )
        REFERENCES tbl_privacidades ( privacidad_id );

ALTER TABLE tbl_likes
    ADD CONSTRAINT tbl_likes_tbl_com_fk FOREIGN KEY ( id_comentarios )
        REFERENCES tbl_comentarios ( id_comentarios );

ALTER TABLE tbl_likes
    ADD CONSTRAINT tbl_likes_tbl_pubs_fk FOREIGN KEY ( id_publicacion )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_likes
    ADD CONSTRAINT "TBL_LIKES_TBL_RE-POSTS_FK" FOREIGN KEY ( id_repost )
        REFERENCES tbl_reposts ( id_repost );

ALTER TABLE tbl_likes
    ADD CONSTRAINT tbl_likes_tbl_usuarios_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_listas
    ADD CONSTRAINT tbl_list_tbl_us_fk FOREIGN KEY ( creador )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_listas
    ADD CONSTRAINT tbl_lists_tbl_medias_fk FOREIGN KEY ( foto_portada )
        REFERENCES tbl_medias ( multimedia_id );

ALTER TABLE tbl_listas
    ADD CONSTRAINT tbl_lists_tbl_priv_fk FOREIGN KEY ( privacidad_id )
        REFERENCES tbl_privacidades ( privacidad_id );

ALTER TABLE tbl_listas_x_usuarios
    ADD CONSTRAINT tbl_lists_x_us_tbl_lists_fk FOREIGN KEY ( id_lista )
        REFERENCES tbl_listas ( id_lista );

ALTER TABLE tbl_listas_x_usuarios
    ADD CONSTRAINT tbl_lists_x_us_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_lugares
    ADD CONSTRAINT tbl_lug_tbl_lug_fk FOREIGN KEY ( id_lugar_padre )
        REFERENCES tbl_lugares ( id_lugar );

ALTER TABLE tbl_medias
    ADD CONSTRAINT tbl_mda_tbl_tipos_mda_fk FOREIGN KEY ( tipo_media_id )
        REFERENCES tbl_tipos_medias ( tipo_media_id );

ALTER TABLE tbl_miembros_x_comunidades
    ADD CONSTRAINT tbl_mi_x_comu_tbl_comu_fk FOREIGN KEY ( comunidad_id )
        REFERENCES tbl_comunidades ( comunidad_id );

ALTER TABLE tbl_miembros_x_comunidades
    ADD CONSTRAINT tbl_mi_x_comu_tbl_us_fk FOREIGN KEY ( miembro )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_moderadores_x_comunidades
    ADD CONSTRAINT tbl_mod_x_comu_tbl_comu_fk FOREIGN KEY ( comunidad_id )
        REFERENCES tbl_comunidades ( comunidad_id );

ALTER TABLE tbl_moderadores_x_comunidades
    ADD CONSTRAINT tbl_mod_x_comu_tbl_us_fk FOREIGN KEY ( moderador )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_msj_tbl_us_fk FOREIGN KEY ( emisor )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_msj_tbl_us_fkv2 FOREIGN KEY ( receptor )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_msjs_tbl_est_msjs_fk FOREIGN KEY ( estado_id )
        REFERENCES tbl_estados_mensajes ( estado_id );

ALTER TABLE tbl_mensajes
    ADD CONSTRAINT tbl_msjs_tbl_msjs_fk FOREIGN KEY ( mensaje_padre )
        REFERENCES tbl_mensajes ( id_mensaje );

ALTER TABLE tbl_notificaciones
    ADD CONSTRAINT tbl_not_tbl_t_not_fk FOREIGN KEY ( id_tipo_notificacion )
        REFERENCES tbl_tipo_notificacion ( id_tipo_notificacion );

ALTER TABLE tbl_notificaciones
    ADD CONSTRAINT tbl_not_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_notificaciones
    ADD CONSTRAINT tbl_not_tbl_us_fkv2 FOREIGN KEY ( id_usuario_procedente )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_publicaciones
    ADD CONSTRAINT tbl_pub_tbl_hash_fk FOREIGN KEY ( id_hashtag )
        REFERENCES tbl_hashtags ( id_hashtag );

ALTER TABLE tbl_publicaciones
    ADD CONSTRAINT tbl_pub_tbl_pub_fk FOREIGN KEY ( id_publicacion_padre )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_publicaciones
    ADD CONSTRAINT tbl_pub_tbl_us_fk FOREIGN KEY ( id_usuario_publica )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_reposts
    ADD CONSTRAINT tbl_rep_tbl_publ_fk FOREIGN KEY ( id_repost )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_reposts
    ADD CONSTRAINT tbl_rep_tbl_publ_fkv2 FOREIGN KEY ( id_publicacion )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_reposts
    ADD CONSTRAINT tbl_reposts_tbl_us_fk FOREIGN KEY ( id_usuario_repost )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_seguidores
    ADD CONSTRAINT tbl_seg_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_seguidores
    ADD CONSTRAINT tbl_seg_tbl_us_fkv2 FOREIGN KEY ( id_usuario_seguidor )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_seguidores_x_listas
    ADD CONSTRAINT tbl_seg_x_list_tbl_us_fk FOREIGN KEY ( seguidor )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_seguidores_x_listas
    ADD CONSTRAINT tbl_segui_x_list_tbl_list_fk FOREIGN KEY ( id_lista )
        REFERENCES tbl_listas ( id_lista );

ALTER TABLE tbl_silenciados
    ADD CONSTRAINT tbl_silenciados_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_silenciados
    ADD CONSTRAINT tbl_silenciados_tbl_us_fkv2 FOREIGN KEY ( id_usuario_silenciado )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_telefonos
    ADD CONSTRAINT tbl_tel_tbl_us_fk FOREIGN KEY ( id_usuarios )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_usuarios_bloqueados
    ADD CONSTRAINT tbl_us_bloq_tbl_us_fk FOREIGN KEY ( id_usuario )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_usuarios_bloqueados
    ADD CONSTRAINT tbl_us_bloq_tbl_us_fkv2 FOREIGN KEY ( id_usuario_bloqueado )
        REFERENCES tbl_usuarios ( id_usuario );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_us_tbl_gen_fk FOREIGN KEY ( id_genero )
        REFERENCES tbl_generos ( id_genero );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_usuarios_tbl_lugares_fk FOREIGN KEY ( id_lugar )
        REFERENCES tbl_lugares ( id_lugar );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_usuarios_tbl_medias_fk FOREIGN KEY ( foto_perfil )
        REFERENCES tbl_medias ( multimedia_id );

ALTER TABLE tbl_usuarios
    ADD CONSTRAINT tbl_usuarios_tbl_medias_fkv2 FOREIGN KEY ( foto_portada )
        REFERENCES tbl_medias ( multimedia_id );

ALTER TABLE tbl_visualizaciones_x_posts
    ADD CONSTRAINT tbl_vis_x_posts_tbl_comen_fk FOREIGN KEY ( id_comentarios )
        REFERENCES tbl_comentarios ( id_comentarios );

ALTER TABLE tbl_visualizaciones_x_posts
    ADD CONSTRAINT tbl_vis_x_posts_tbl_publ_fk FOREIGN KEY ( id_publicacion )
        REFERENCES tbl_publicaciones ( id_publicacion );

ALTER TABLE tbl_visualizaciones_x_posts
    ADD CONSTRAINT tbl_vis_x_posts_tbl_us_fk FOREIGN KEY ( id_usuario_ver )
        REFERENCES tbl_usuarios ( id_usuario );



-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            27
-- CREATE INDEX                             0
-- ALTER TABLE                             78
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
