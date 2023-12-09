let usuarios = [
    1,
    3,
    4,
    5,
    1,
    1,
    1,
    1,
    2,
    10
];
let post = [
    'Hola Mundo',
    'Mi primera publicacion',
    'Hoy es un gran dia',
    'No quiero hacer tareas',
    'A divertirse',
    'Hoy es viernes y el cuerpo lo sabe',
    'Tengo resaca',
    'A descansar',
    'TQM',
    'hola'
];
async function AddPost(connection) {
    try {
      const stmts = usuarios.map((usuario, index) => {
        return `INSERT INTO TBL_PUBLICACIONES(ID_PUBLICACION,ID_USUARIO_PUBLICA,ID_PUBLICACION_PADRE,ID_HASHTAG,CONTENIDO,FECHA_PUBLICACION)
                VALUES(SQ_PUBLICACION.NEXTVAL, ${usuario}, NULL, NULL, '${post[index]}', sysdate)`;
      });
  
      for (const s of stmts) {
        try {
          await connection.execute(s);
        } catch (e) {
          if (e.errorNum !== 942) {
            throw e;
          }
        }
      }
  
      await connection.commit();
    } catch (err) {
      console.error("Error during setupBf:", err.message);
     
    }
  }
  
  module.exports.AddPost = AddPost;
  