var express = require('express');
var mysql = require('mysql');
var app = express();
var bodyParser = require('body-parser');

app.set('view engine', 'ejs');
app.use(bodyParser.urlencoded({extended: true}));
app.use(express.static(__dirname + "/public"));

var connection = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    database: 'join_us'    
});



app.get("/", function(req, res){

    var q = "SELECT COUNT(*) AS count FROM users";
    connection.query(q, function(error, results){
        if(error) throw error;
        var count = results[0].count;
        //res.send("We have " + count + " users in our db");
        res.render('home', {data : count});
    });
});

app.get("/joke", function(req, res){
    var joke = "<strong>Nasirudding Hojja went rubbing ointment</strong> the place where he got stumbled.";
    res.send(joke);
});

app.get("/random_num", function(req, res){
    var num = Math.round(Math.random() * 10) + 1;
    res.send("Your luckhy number is " + num);
});

app.post('/register', function(req, res){
     var person = {email : req.body.email};
        //var q = "INSERT INTO users(email) VALUES(" + req.body.email + ")";  //this also works
        //connection.query(q, function(error,result){})
        connection.query('INSERT INTO users SET ?', person, function(error, result){
        if(error) throw error;
        res.redirect("/");
        //res.send("Thanks for joining us");
     })
})

// app.get("/", function(req, res){
//     console.log("I am only in console log");
// });

app.listen(8080, function(){
    console.log("Server is running on port 8080");
});


