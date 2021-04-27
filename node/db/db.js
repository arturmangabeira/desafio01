async function connect(){
    if(global.connection && global.connection.state !== 'disconnected')
        return global.connection;
 
    const mysql = require("mysql2/promise");
    const connection = await mysql.createConnection("mysql://userdesafio:desafio01@desafio01mysql:3306/desafio01");
    console.log("Conectou no MySQL!");
    global.connection = connection;
    return connection;
}

async function selectCursos(){
    const conn = await connect();
    const [rows] = await conn.query('SELECT * FROM modulo_cursos;');
    return rows;
}
 
module.exports = {selectCursos}