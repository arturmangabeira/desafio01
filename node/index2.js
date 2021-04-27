(async () => {
    const db = require("./db/db");
    console.log('Começou!');
 
    console.log('SELECT * FROM modulo_cursos');
    const clientes = await db.selectCursos();
    console.log(clientes);
})();