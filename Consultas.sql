--1) Muestra tota la informacion de los usuarios en una sola consulta,
--nombre completo, alias, correo, fecha de nacimiento, genero, el lugar principal que tienen registrado,
--foto de perfil y foto portado, la cantidad de seguidores y seguidos,
--cantidad de publicaciones hechas
SELECT CONCAT(CONCAT(A.NOMBRE,' '),A.APELLIDO) NOMBRE_USUARIO,
       A.ALIAS_USUARIO,
       A.CORREO_ELECTRONICO,
       TO_CHAR(A.FECHA_NACIMIENTO, 'DD-MON-YYYY') NACIMIENTO,
       C.GENERO,
       E.NOMBRE_LUGAR LUGAR,
       B.MEDIA FOTO_PERFIL,
       D.MEDIA PORTADA,
       NVL(F.SEGUIDORES,0) SEGUIDORES,
       NVL(G.SEGUIDOS,0) SEGUIDOS,
       NVL(H.PUBLICACIONES,0) PUBLICACIONES
FROM TBL_USUARIOS A
LEFT JOIN TBL_MEDIAS B ON A.FOTO_PERFIL= B.MULTIMEDIA_ID
LEFT JOIN TBL_GENEROS C ON A.ID_GENERO = C.ID_GENERO
LEFT JOIN TBL_MEDIAS D ON A.FOTO_PORTADA=D.MULTIMEDIA_ID
LEFT JOIN TBL_LUGARES E ON A.ID_LUGAR = E.ID_LUGAR
LEFT JOIN (SELECT ID_USUARIO,COUNT(1) SEGUIDORES FROM TBL_SEGUIDORES GROUP BY ID_USUARIO) F ON A.ID_USUARIO = F.ID_USUARIO
LEFT JOIN (SELECT ID_USUARIO_SEGUIDOR,COUNT(1) SEGUIDOS FROM TBL_SEGUIDORES GROUP BY ID_USUARIO_SEGUIDOR) G ON A.ID_USUARIO=G.ID_USUARIO_SEGUIDOR
LEFT JOIN (SELECT ID_USUARIO_PUBLICA,COUNT(1) PUBLICACIONES FROM TBL_PUBLICACIONES
GROUP BY ID_USUARIO_PUBLICA) H ON A.ID_USUARIO=H.ID_USUARIO_PUBLICA;

--2)Publicaiones con la siguiente informacion
-- (solo publicaiones primarias sin padres)
--usuario que hizo la publicacion, alias, fecha publicacion,
--contenido, hashtags, cantidad de vistas, cantidad de likes, veces reposteada, cantidad de comentarios a esa publicacion
SELECT B.NOMBRE||' '||B.APELLIDO USUARIO,
       B.ALIAS_USUARIO,
       A.FECHA_PUBLICACION,
       A.CONTENIDO,
       NVL(C.LIKES,0) LIKES,
       NVL(D.VIEWS,0) VIEWS,
       NVL(E.COMENTARIOS,0) COMENTARIOS,
       NVL(F.REPOSTS,0) REPOSTS
FROM TBL_PUBLICACIONES A
LEFT JOIN TBL_USUARIOS B ON A.ID_USUARIO_PUBLICA=B.ID_USUARIO
LEFT JOIN
(SELECT ID_PUBLICACION,COUNT(1) LIKES FROM TBL_LIKES
GROUP BY ID_PUBLICACION) C ON A.ID_PUBLICACION=C.ID_PUBLICACION
LEFT JOIN (
    SELECT ID_PUBLICACION,COUNT(1) VIEWS FROM TBL_VISUALIZACIONES_X_POSTS
    GROUP BY ID_PUBLICACION
) D ON A.ID_PUBLICACION=D.ID_PUBLICACION
LEFT JOIN (
    SELECT ID_PUBLICACION,COUNT(1) COMENTARIOS
    FROM TBL_COMENTARIOS GROUP BY ID_PUBLICACION
) E ON A.ID_PUBLICACION=E.ID_PUBLICACION
LEFT JOIN (
    SELECT ID_PUBLICACION,COUNT(1) REPOSTS
    FROM TBL_REPOSTS GROUP BY ID_PUBLICACION
) F ON A.ID_PUBLICACION=F.ID_PUBLICACION
WHERE NVL(A.ID_PUBLICACION_PADRE,0)=0;

--3)De la tabla de busquedas, mostrar las 10 busquedas mas populares en el dia,
SELECT PALABRAS,COUNT(1) CANTIDAD_BUSCADA FROM TBL_BUSQUEDAS
WHERE TO_CHAR(FECHA_BUSQUEDA,'DD-MM-YY')=TO_CHAR(SYSDATE,'DD-MM-YY')
GROUP BY PALABRAS
ORDER BY CANTIDAD_BUSCADA DESC
FETCH FIRST  10 ROWS ONLY ;



