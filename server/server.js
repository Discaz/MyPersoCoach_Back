const express = require('express')
const cors = require('cors')
const bodyParser = require ('body-parser')
const morgan = require('morgan')

const routes = require('./routes/index')

const app = express()
const port = 3001


app.use(cors())

app.use(morgan('dev'))
app.use(morgan(':method :url :status :res[content-length] - :response-time ms'))

app.use(bodyParser.urlencoded ({ extended: false}))
app.use(bodyParser.json())

app.use("/login", routes.login)
app.use("/main_theme", routes.main_theme)
app.use("/problem", routes.problem)

app.use("/problem_origin", routes.problem_origin)
app.use("/text_static", routes.text_static)
app.use("/summary", routes.summary)
app.use("/response", routes.response)
app.use("/icon", routes.icon)
app.use("/action", routes.action)
app.use("/manager", routes.manager)
app.use("/entreprise", routes.entreprise)
app.use("/employee", routes.employee)

app.get('/', (req, res)=>{
    res.status(200).send('Acceuil')
})


app.listen(port, console.log (`http://localhost:${port}`))