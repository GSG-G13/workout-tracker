// Here is the whole code please solve the probem why the fetch and table is not working quickly

//public/index.html
// <!DOCTYPE html>
// <html lang="en">
// <head>
//     <meta charset="UTF-8">
//     <meta http-equiv="X-UA-Compatible" content="IE=edge">
//     <meta name="viewport" content="width=device-width, initial-scale=1.0">
//     <link rel="stylesheet" href="css/style.css">
//     <title>Home</title>
// </head>
// <body>

      
  
//     <!-- LOGIN FORM CREATION -->
//     <div class="background"></div>
//     <div class="container">
//         <div class="item">
//             <h2 class="logo"><i class='bx bxl-xing'></i>GYM</h2>
//             <div class="text-item">
//                 <h2>BUILD<br><span>
//                    YOUR BODY
//                 </span></h2>
//                 <p>Fitness isnt always about progress.its about consistency.</p>

//             </div>
//         </div>
//         <div class="login-section">
//             <div class="form-box login">
//                 <form action="/login" method="post">
//                     <h2>Log In</h2>
//                     <div class="input-box">
//                         <span class="icon"><i class='bx bxs-envelope'></i></span>
//                         <input type="text" name="name" required>
//                         <label >Username</label>
//                     </div>
//                     <div class="input-box">
//                         <span class="icon"><i class='bx bxs-lock-alt' ></i></span>
//                         <input type="password"  name="password" required>
//                         <label>Password</label>
//                     </div>
//                     <div class="remember-password">
//                         <label for=""><input type="checkbox">Remember Me</label>
//                         <a href="#">Forget Password</a>
//                     </div>
//                     <button class="btn">Login In</button>
//                     <div class="create-account">
//                         <p>Create A New Account? <a href="#" class="register-link">Sign Up</a></p>
//                     </div>
//                 </form>
//             </div>
    
//         </div>
//     </div>
   
     
// </body>
// </html>

// public/workout.html
/*
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/workout.css">
    <title>WORKOUTS</title>
</head>
<body>
  
    <!-- LOGIN FORM CREATION -->

    <div class="containerr">
      <h1>Track your progress</h1>
      <div class="form-box"> 
        <form action="/add_workout" method="post">
          <div class="row"> <div class="input-box">
            <input type="text" name="exercise"id="exe" required>
            <label >Excersice</label>
        </div>
        <div class="input-box">
          <input type="date" name="workout_date" id="dat" required>
        </div></div>
        <div class="row"> <div class="input-box">
          <input type="number" name="reps" id="rep" required>
            <label>Reps</label>
        </div>
        <div class="input-box">
          <input type="text" name="duration"  id="dur" required>
            <label>Duration</label>
        </div></div>
     
       
        
      
        <button type="submit" id="btn">add</button>

    </form></div>
     
   
    <table>
      
        <thead>
          <tr>
            <th scope="col">Date</th>
            <th scope="col">Exercise</th>
            <th scope="col">Reps</th>
            <th scope="col">Duration</th>
          </tr>
        </thead>
        <tbody class="parent">
          <tr>
            <td data-label="Date">Visa - 3412</td>
            <td data-label="Excersice">04/01/2016</td>
            <td data-label="Reps">$1,190</td>
            <td data-label="Duration">03/01/2016 - 03/31/2016</td>
          </tr>
          
        </tbody>
      </table>
        </div>
        <script src="./js/dom.js"></script>
      <script src="app.js"></script>
    
</body>
</html>
*/

// public/app.js
/*
fetch('/workout').then(res => res.json()).then(data => {
    creatRow(data);
})
 */

// public/dom.js
/*

const thead = document.querySelector('.parent')
const creatRow = (data) => {
    data.forEach(workout => {
        const tr = document.createElement('tr')
        const td1 = document.createElement("td");
        td1.setAttribute("data-label", "Date");
        td1.textContent = workout.workout_date;



        const td2 = document.createElement("td");
        td2.setAttribute("data-label", "Excersice");
        td2.textContent = workout.exercise;


        const td3 = document.createElement("td");
        td3.setAttribute("data-label", "Reps");
        td3.textContent = workout.reps;

        const td4 = document.createElement("td");
        td4.setAttribute("data-label", "Duration");
        td4.textContent = workout.duration;


        // add the <td> elements to the <tr> element
        tr.appendChild(td1);
        tr.appendChild(td2);
        tr.appendChild(td3);
        tr.appendChild(td4);
    });

}

const submitBtn = document.querySelector("#btn");
const exeInput = document.querySelector("#exe");
const dateInput = document.querySelector("#dat");
const repInput = document.querySelector("#rep");
const durInput = document.querySelector("#dur");

submitBtn.addEventListener("click", () => {
    fetch("/workout", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
       td2:exeInput.value,
       td1:dateInput.value,
       td3:repInput.value,
       td4:durInput.value,

       
      }),
    })
      .then((res) => res.json())
     
  });
 */


  //  src/controllers/users/addUser.js
  /*const express = require('express')
const { addUserQuery } = require("../../database/queries");

const addUser = (req, res) => {
    const user_data = req.body;

    addUserQuery(user_data)
        .then(
            () => res.redirect('/')
        )
        .catch((err) => console.log("err:", err));
};
module.exports = addUser;
*/


  //  src/controllers/workouts/getWorkouts.js
  /*
  const express=require('express')
const {getDataQuery} = require("../../database");

const getData = (req,res)=>{
 getDataQuery()
 .then((data) => {
  res.json({
    error: false,
    data: {
      workouts: data.rows,
      message: "Workouts Retrieved Successfully!",
    },
  });
})
 .catch(err => console.log("err:", err))
}

module.exports = getData;

 */


  //  src/controllers/workouts/postWorkouts.js
  /*const express = require('express')
const { postDataQuery } = require("../../database");


const postData = (req, res) => {
  const { exercise,workout_date,reps,duration} = req.body;

  postDataQuery({ exercise,workout_date,reps,duration })
    .then((data) => {
      res.json(data.rows[0]);
    })
    .catch((err) => console.log("err:", err));
};

module.exports = postData;
 */




  //  src/controllers/workouts/index.js

/*
const express = require("express");
const getData = require('./getWorkouts');
const postData = require('./postWorkout');
const path = require('path');
const workout_page = (req, res) => {
  res.sendFile(path.join(__dirname, '..', '..', '..', 'public', 'workout.html'));
};

module.exports = { getData, postData, workout_page };
*/


  //  src/database/config/connection.js
  /*require('env2')('.env');
const { log } = require('console');
const { Pool } = require('pg');

const { DB_URL } = process.env;
console.log(DB_URL);
const connection = new Pool({
    connectionString: DB_URL,
    ssl: false,
})

module.exports = connection;

 */


  //  src/database/queries/addUser.js
  /*const connection = require('../config/connection');

const addUser = (data) => {
    let { name, password } = data;
    const sql = {
        text: "INSERT INTO users(name,password) VALUES($1, $2) returning name,password",
        values: [name, password],
    };

    return connection.query(sql);
};

module.exports = addUser; */


  //  src/database/queries/getData.js
  /*const connection=require('../config/connection');

const getData=()=>{
  const sql={
    text:'SELECT * FROM workouts;',
  };
   return connection.query(sql)
}
module.exports=getData;
 */





  //  src/database/queries/postData.js
  /*const connection=require('../config/connection');
const postData=(data)=>{
  let {exercise,workout_date,reps,duration} = data;
  const sql = {
    text: "INSERT INTO workouts(exercise,workout_date,reps,duration) VALUES($1, $2,$3,$4) returning exercise,workout_date,reps,duration",
    values: [exercise,workout_date,reps,duration],
  };

  return connection.query(sql);
};

module.exports = postData; */


  //  src/database/queries/index.js
  /*const getDataQuery = require("./getData");
const postDataQuery = require("./postData");
const addUserQuery = require('./addUser')

module.exports = { getDataQuery, postDataQuery, addUserQuery }; */


  //  src/database/config.sql
 /* BEGIN;

DROP TABLE IF EXISTS users, workouts CASCADE;

CREATE TABLE users(
    user_id  SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(20) NOT NULL
);

INSERT INTO users (name, password) VALUES
    ('momen', 'momen123'),
    ('mohammed', 'mohammed123');

CREATE TABLE workouts(
    workout_id  SERIAL PRIMARY KEY,
    user_id  integer references users(user_id),
    exercise  VARCHAR(255) NOT NULL,
    workout_date date NOT NULL,
    reps  integer NOT NULL,
     duration  integer NOT NULL

);

INSERT INTO  workouts (exercise,  workout_date,reps,duration) VALUES
    ('jumping', '2023-3-3','4','30'),
    ('squate', '2023-3-3','4','30');

COMMIT;*/


  //  src/database/index.js
  /*const { getDataQuery, postDataQuery ,addUserQuery} = require("./queries");
const config = require("./config/connection");

module.exports = { getDataQuery, postDataQuery,addUserQuery, config };
 */


  //  src/app.js
  /*const express = require('express');
  const { join } = require('path')
  const router = require('./router')
  
  const app = express();
  app.use(express.static(join(__dirname, '..', 'public')))
  app.use(express.urlencoded({ extended: false }));
  app.use(express.json());
  app.set('port', process.env.PORT || 5000)
  
  app.use(router)
  
  module.exports = app;*/
  
  



  //  src/index.js
/*const app = require('./app');
app.listen(app.get('port'), () => {
    console.log(`App is live on http://localhost:${app.get('port')}`);
}); */



  //  src/router.js
  /*const express = require('express');
const { getData, postData, workout_page} = require('./controllers/workouts');
const addUser =require('./controllers/users/addUser')


const router = express.Router();
router.get('/workout', getData);
router.post('/add_workout', postData);
router.post('/login', addUser);
router.get('/workouts', workout_page);

module.exports = router; */



