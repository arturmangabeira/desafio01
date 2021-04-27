const {response} = require('express')
const express = require('express')
const app = express()



app.get('/', async (req, res) => {
    try{
        const db = require("./db/db");    
        const cursos = await db.selectCursos();
        res.json(cursos);
    }catch(err){        
        res.send(err);
    }    
})

app.listen(3000, () => {
    console.log("Executando na porta 3000!")
})