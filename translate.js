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
var connection = mysql.createConnection(process.env.JAWSDB_URL || {
  host     : 'localhost',
  user     : 'root',
  password : 'asdfasdf',
  database : 'translate_db'
});
 
connection.connect();

// app.get('/', function(req, res){
// 	console.log(__dirname)
// 	// res.sendFile(path.join(__dirname));
// 	res.redirect('/translate.html');
// });

app.get('/greeting', function(req, res) {
	connection.query('SELECT * FROM phrases', function (error, results, fields) {
	  if (error) return res.send(error)
	  // console.log(res)
	  res.json(results);
	});	
});

app.get('/food', function(req, res) {
	connection.query('SELECT * FROM phrases', function (error, results, fields) {
	  if (error) return res.send(error)
	  // console.log(res)
	  res.json(results);
	});	
});

app.get('/generic', function(req, res) {
	connection.query('SELECT * FROM phrases', function (error, results, fields) {
	  if (error) return res.send(error)
	  // console.log(res)
	  // res.json(results);
	  var result = {}

	  for(var i=0; i < results.length; i++) {
	  	result[results[i].phrase] = {
	  		...results[i]
	  		// thai_server: results[i].thai_server
	  	}
	  }
	  res.json(result)
	});	
});


app.listen(process.env.PORT, function(){
	console.log('listening on 3000');
});

