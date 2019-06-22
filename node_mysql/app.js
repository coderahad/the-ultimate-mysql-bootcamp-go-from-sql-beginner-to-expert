var faker = require('faker');
var mysql = require('mysql');

// function generateAddress(){
//     console.log(faker.address.streetAddress());
//     console.log(faker.address.city());
//     console.log(faker.address.state());
// }

// generateAddress();

var connection = mysql.createConnection({
    host    : 'localhost',
    user    : 'root',
    database: 'join_us'
});

connection.connect();

//var q = 'INSERT INTO users(email) VALUES("rusty_the_dog@gmail.com")';
//var q = 'SELECT * FROM users';

// var person = {
//                 email     : faker.internet.email(),
//                 created_at: faker.date.past()
//             };
// connection.query('INSERT INTO users SET ?', person,function(error, results){
//     if(error) throw error;
//     console.log(results);
// });




// var person = {
//     email     : faker.internet.email(),
//     created_at: faker.date.past()
// };
// console.log(person);

// var end_result = connection.query('INSERT INTO users SET ?', person,function(error, results){
//         if(error) throw error;
//         console.log(results);
//         });

// console.log(end_result.sql);

//INSERTING LOTS OF DATA

// var data = [
//             ['blah@gmail.com', '2017-05-01 03:55:26'],
//             ['slah@gmail.com', '2018-08-01 03:55:01'],
//             ['tlah@gmail.com', '2018-03-01 05:55:26']
//         ];

// var q = 'INSERT INTO users(email,created_at) VALUES ?';
// connection.query(q,[data],function(err, result){
//     console.log(err);
//     console.log(result);
// });

var data = [];
for(var i =0; i < 100; i++){
  data.push([
    faker.internet.email(),
    faker.date.past()
 ]);
}

 var q = 'INSERT INTO users(email,created_at) VALUES ?';
 connection.query(q,[data],function(err, result){
     console.log(err);
     console.log(result);
 });


 connection.end();