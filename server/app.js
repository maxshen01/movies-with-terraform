const express = require('express')
const cors = require('cors')

const logger = require("./logger")
const moviesRouter = require("./routes/movies")

const app = express()

//middleware
app.use(express.json())
app.use(cors())
app.use(logger)

//routes
app.get('/', (req, res) => {
    res.status(200).send('Welcome to the movies api, go to /movies to see the routes')
})

app.use('/movies', moviesRouter)

module.exports = app