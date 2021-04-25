const {response} = require('express')
const express = require('express')
const app = express()

const db = require("./db/db.js");

app.get('/', async (req, res) => {
    
    const cursos = await db.selectCursos();
    res.sen("Estou aqui !!!");
})

app.listen(3000, () => {
    console.log("Executando na porta 3000!")
})