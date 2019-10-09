var mysql = require('mysql');
var express = require('express');
var session = require('express-session');
var bodyParser = require('body-parser');
var path = require('path');
var app = express();

app.use(express.static("public"));

var connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	password : 'asdfasdf',
	database : 'login_db'
});

//connection.connect();


app.listen(3000, function(){
	console.log('listening on 3000');
});