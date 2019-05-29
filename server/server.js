const express = require('express')
const bodyParser = require ('body-parser')
const morgan = require('morgan')
const routes = require('./routes/index')

const app = express()
const port = 3000

app.use(morgan('dev'))
app.use(morgan(':method :url :status :res[content-length] - :response-time ms'))

app.use(bodyParser.urlencoded ({ extended: false}))
app.use(bodyParser.json())

app.use("/main_theme", routes.main_theme)
app.use("/problem", routes.problem)
app.use("/question", routes.question)
app.use("/problem_origin", routes.problem_origin)
app.use("/text_static", routes.text_static)

app.get('/', (req, res)=>{
    res.status(200).send('Aceuil')
})


app.listen(port, console.log (`http://localhost:${port}`))