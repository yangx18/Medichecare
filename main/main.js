'use babel'; // use babel transpiler
require('./util/db-connect'); // db connection

var express = require('express');
var app = express();
const path = require('path');
const bodyParser = require('body-parser');

const mongoose = require('mongoose');
var Todo = mongoose.model('Todo');

var util = require('./util/util');


app.use(bodyParser.json()); // REQUEST PARSER
app.use('/res', express.static('static'));  // NOTE access via /res/js/app.js


// ROUTING
app
.route('/')
.get((req, res) => {
    res.status(200).sendFile('index.html', { root: path.join('.', 'static') }); // root file
});



// MAIN
var port = process.env.PORT || 3000;
app.listen(port, () => {
    console.log('Example app listening on port', port);
});
