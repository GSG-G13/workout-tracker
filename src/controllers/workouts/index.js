const getData =require('./getWorkouts');
const postData =require('./postWorkout');
const path = require('path');
const workout_page = (req,res)=>{
  res.sendFile(path.join(__dirname,'..','..','..','public','workout.html'));
};

module.exports = {getData ,postData,workout_page};