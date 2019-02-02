const express = require('express')
const app = express()
var port = process.env.PORT || 1337;

var response = 'Version: ' + process.version + "\n" + "Hello World!";

app.get('/', (req, res) => res.send(response))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
