const express=require('express')
const {postDataQuery}= require("../../database/queries");

const postData = (req, res) => {
  const workout_data = req.body;

  postDataQuery(workout_data)
    .then(
      ()=> res.redirect('/workout')
    )
 
    
    .catch((err) => console.log("err:", err));
};
module.exports = postData;