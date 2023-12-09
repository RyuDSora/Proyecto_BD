const http = require('http');
const oracledb = require('oracledb');
const dbConfig = require('./dbconfig.js');
const httpPort = 7000;

//create a server object:
const server =
http.createServer(function (req, res) {-
    init();
    res.write('Hello World!'); //write a response to the client
    res.end(); //end the response
    
  }).listen(8080); //the server object listens on port 8080
  server.on('error', (err) => {
    console.log('HTTP server problem: ' + err);
  });
  server.on('request', (request, response) => {
    handleRequest(request, response);
  });
  

  async function init() {
    try {
      await oracledb.createPool({
          user: dbConfig.user,
          password: dbConfig.password,
          connectString: dbConfig.connectionString,
      });
  
      const connection = await oracledb.getConnection();
    } catch (err) {
      console.error("init() error: " + err.message);
    }
  }
  
  async function handleRequest(request, response) { 
    const urlparts = request.url.split("/");
  const id = urlparts[1];

  if (id == 'favicon.ico') {  // ignore requests for the icon
    return;
  }

  if (id != parseInt(id)) {
    handleError(
      response,
      'URL path "' + id + '" is not an integer.  Try http://localhost:' + httpPort + '/3',
      null
    );

    return;
  }

    let connection;
    try {
      // Checkout a connection from the default pool
      connection = await oracledb.getConnection();
  
      const result = await connection.execute(
        `SELECT ID_PUBLICACION, ID_USUARIO_PUBLICA, CONTENIDO, FECHA_PUBLICACION
           FROM TBL_PUBLICACIONES
           ORDER BY ID_USUARIO_PUBLICA` 
      );
  
      displayResults(
        response,
        result,
        id);
  
    } catch (err) {
      handleError(response, "handleRequest() error", err);
    } finally {
      if (connection) {
        try {
          // Release the connection back to the connection pool
          await connection.close();
        } catch (err) {
          console.error(err);
        }
      }
    }
  }
  function displayResults(response, title, caption, result, id) {

    response.writeHead(200, {"Content-Type": "text/html"});
    response.write("<!DOCTYPE html>");
    response.write("<html>");
    response.write("<head>");
    response.write("<style>" +
                   "body {background:#FFFFFF;color:#000000;font-family:Arial,sans-serif;margin:40px;padding:10px;font-size:12px;text-align:center;}" +
                   "h1 {margin:0px;margin-bottom:12px;background:#FF0000;text-align:center;color:#FFFFFF;font-size:28px;}" +
                   "table {border-collapse: collapse;   margin-left:auto; margin-right:auto;}" +
                   "td, th {padding:8px;border-style:solid}" +
                   "</style>\n");
    response.write("<title>" + caption + "</title>");
    response.write("</head>");
    response.write("<body>");
    response.write("<h1>" + title + "</h1>");
  
    response.write("<h2>" + "Harvest details for farmer " + id + "</h2>");
  
    response.write("<table>");
  
    // Column Titles
    response.write("<tr>");
    for (let col = 0; col < result.metaData.length; col++) {
      response.write("<th>" + result.metaData[col].name + "</th>");
    }
    response.write("</tr>");
  
    // Rows
    for (let row = 0; row < result.rows.length; row++) {
      response.write("<tr>");
      for (let col = 0; col < result.rows[row].length; col++) {
        response.write("<td>" + result.rows[row][col] + "</td>");
      }
      response.write("</tr>");
    }
    response.write("</table>");
  
    response.write("</body>\n</html>");
    response.end();
  
  }
  