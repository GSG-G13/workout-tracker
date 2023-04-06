const express = require('express')
const { postDataQuery } = require("../../database");

const postData = (req, res) => {
  const workout_data = req.body;

  postDataQuery(workout_data)
    .then(
      () => res.redirect('/workouts')
    )
    .catch((err) => console.log("err:", err));
};


module.exports = postData;
