var express = require('express');
var app = express();
var methodOverride = require('method-override')
var path = require('path');

app.use(methodOverride('_method'))

var bodyParser = require('body-parser')

app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json());

app.use(express.static("public"));


var mysql = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'asdfasdf',
  database : 'translate_db'
});
 
connection.connect();

app.get('/', function(req, res){
	console.log(__dirname)
	// res.sendFile(path.join(__dirname));
	res.redirect('/translate.html');
});

app.get('/greeting', function(req, res) {
	connection.query('SELECT * FROM translation', function (error, results, fields) {
	  if (error) return res.send(error)
	  // console.log(res)
	  res.json(results);
	});	
});

app.listen(3000, function(){
	console.log('listening on 3000');
});

