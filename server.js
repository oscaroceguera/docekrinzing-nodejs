'use strict'

const express = require('express')

const PORT = 8080

const app = express()
app.get('/', function (req, res) {
  res.send('Hello world\n')
})

app.listen(PORT)
console.log('Runnning on http://localhost:' + PORT);
